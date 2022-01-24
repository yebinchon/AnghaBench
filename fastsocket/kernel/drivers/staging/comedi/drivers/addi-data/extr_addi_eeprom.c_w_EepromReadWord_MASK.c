#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 unsigned char NVCMD_BEGIN_READ ; 
 unsigned char NVCMD_LOAD_HIGH ; 
 unsigned char NVCMD_LOAD_LOW ; 
 unsigned char FUNC0 (unsigned short) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char,unsigned short) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned short,unsigned short,unsigned short*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned short) ; 

unsigned short FUNC5(unsigned short w_PCIBoardEepromAddress, char *pc_PCIChipInformation,
	unsigned short w_EepromStartAddress)
{

	unsigned char b_Counter = 0;

	unsigned char b_ReadByte = 0;

	unsigned char b_ReadLowByte = 0;

	unsigned char b_ReadHighByte = 0;

	unsigned char b_SelectedAddressLow = 0;

	unsigned char b_SelectedAddressHigh = 0;

	unsigned short w_ReadWord = 0;

	/**************************/

	/* Test the PCI chip type */

	/**************************/

	if ((!FUNC2(pc_PCIChipInformation, "S5920")) ||
		(!FUNC2(pc_PCIChipInformation, "S5933")))
	{

		for (b_Counter = 0; b_Counter < 2; b_Counter++)
		{

			b_SelectedAddressLow = (w_EepromStartAddress + b_Counter) % 256;	/* Read the low 8 bit part */

			b_SelectedAddressHigh = (w_EepromStartAddress + b_Counter) / 256;	/* Read the high 8 bit part */

	      /************************************/

			/* Select the load low address mode */

	      /************************************/

			FUNC1(NVCMD_LOAD_LOW, w_PCIBoardEepromAddress + 0x3F);

	      /****************/

			/* Wait on busy */

	      /****************/

			FUNC4(w_PCIBoardEepromAddress);

	      /************************/

			/* Load the low address */

	      /************************/

			FUNC1(b_SelectedAddressLow,
				w_PCIBoardEepromAddress + 0x3E);

	      /****************/

			/* Wait on busy */

	      /****************/

			FUNC4(w_PCIBoardEepromAddress);

	      /*************************************/

			/* Select the load high address mode */

	      /*************************************/

			FUNC1(NVCMD_LOAD_HIGH, w_PCIBoardEepromAddress + 0x3F);

	      /****************/

			/* Wait on busy */

	      /****************/

			FUNC4(w_PCIBoardEepromAddress);

	      /*************************/

			/* Load the high address */

	      /*************************/

			FUNC1(b_SelectedAddressHigh,
				w_PCIBoardEepromAddress + 0x3E);

	      /****************/

			/* Wait on busy */

	      /****************/

			FUNC4(w_PCIBoardEepromAddress);

	      /************************/

			/* Select the READ mode */

	      /************************/

			FUNC1(NVCMD_BEGIN_READ, w_PCIBoardEepromAddress + 0x3F);

	      /****************/

			/* Wait on busy */

	      /****************/

			FUNC4(w_PCIBoardEepromAddress);

	      /*****************************/

			/* Read data into the EEPROM */

	      /*****************************/

			b_ReadByte = FUNC0(w_PCIBoardEepromAddress + 0x3E);

	      /****************/

			/* Wait on busy */

	      /****************/

			FUNC4(w_PCIBoardEepromAddress);

	      /*********************************/

			/* Select the upper address part */

	      /*********************************/

			if (b_Counter == 0)
			{

				b_ReadLowByte = b_ReadByte;

			}	/*  if(b_Counter==0) */

			else
			{

				b_ReadHighByte = b_ReadByte;

			}	/*  if(b_Counter==0) */

		}		/*  for (b_Counter=0; b_Counter<2; b_Counter++) */

		w_ReadWord = (b_ReadLowByte | (((unsigned short) b_ReadHighByte) * 256));

	}			/*  end of if ((!strcmp(pc_PCIChipInformation, "S5920")) || (!strcmp(pc_PCIChipInformation, "S5933"))) */

	if (!FUNC2(pc_PCIChipInformation, "93C76"))
	{

	   /*************************************/

		/* Read 16 bit from the EEPROM 93C76 */

	   /*************************************/

		FUNC3(w_PCIBoardEepromAddress, w_EepromStartAddress,
			&w_ReadWord);

	}

	return w_ReadWord;

}