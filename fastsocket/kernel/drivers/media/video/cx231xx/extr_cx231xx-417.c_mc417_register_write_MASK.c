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
typedef  int u32 ;
typedef  int u16 ;
struct cx231xx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ITVC_WRITE_DIR ; 
 int MCI_MODE_REGISTER_WRITE ; 
 int MCI_REGISTER_ADDRESS_BYTE0 ; 
 int MCI_REGISTER_ADDRESS_BYTE1 ; 
 int MCI_REGISTER_DATA_BYTE0 ; 
 int MCI_REGISTER_DATA_BYTE1 ; 
 int MCI_REGISTER_DATA_BYTE2 ; 
 int MCI_REGISTER_DATA_BYTE3 ; 
 int MCI_REGISTER_MODE ; 
 int FUNC0 (struct cx231xx*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct cx231xx*) ; 

__attribute__((used)) static int FUNC2(struct cx231xx *dev, u16 address, u32 value)
{
	u32 temp;
	int status = 0;

	temp = 0x82|MCI_REGISTER_DATA_BYTE0|((value&0x000000FF)<<8);
	temp = temp<<10;
	status = FUNC0(dev, ITVC_WRITE_DIR, temp);
	if (status < 0)
		return status;
	temp = temp|((0x05)<<10);
	FUNC0(dev, ITVC_WRITE_DIR, temp);

	/*write data byte 1;*/
	temp = 0x82|MCI_REGISTER_DATA_BYTE1|(value&0x0000FF00);
	temp = temp<<10;
	FUNC0(dev, ITVC_WRITE_DIR, temp);
	temp = temp|((0x05)<<10);
	FUNC0(dev, ITVC_WRITE_DIR, temp);

	/*write data byte 2;*/
	temp = 0x82|MCI_REGISTER_DATA_BYTE2|((value&0x00FF0000)>>8);
	temp = temp<<10;
	FUNC0(dev, ITVC_WRITE_DIR, temp);
	temp = temp|((0x05)<<10);
	FUNC0(dev, ITVC_WRITE_DIR, temp);

	/*write data byte 3;*/
	temp = 0x82|MCI_REGISTER_DATA_BYTE3|((value&0xFF000000)>>16);
	temp = temp<<10;
	FUNC0(dev, ITVC_WRITE_DIR, temp);
	temp = temp|((0x05)<<10);
	FUNC0(dev, ITVC_WRITE_DIR, temp);

	/*write address byte 0;*/
	temp = 0x82|MCI_REGISTER_ADDRESS_BYTE0|((address&0x000000FF)<<8);
	temp = temp<<10;
	FUNC0(dev, ITVC_WRITE_DIR, temp);
	temp = temp|((0x05)<<10);
	FUNC0(dev, ITVC_WRITE_DIR, temp);

	/*write address byte 1;*/
	temp = 0x82|MCI_REGISTER_ADDRESS_BYTE1|(address&0x0000FF00);
	temp = temp<<10;
	FUNC0(dev, ITVC_WRITE_DIR, temp);
	temp = temp|((0x05)<<10);
	FUNC0(dev, ITVC_WRITE_DIR, temp);

	/*Write that the mode is write.*/
	temp = 0x82 | MCI_REGISTER_MODE | MCI_MODE_REGISTER_WRITE;
	temp = temp<<10;
	FUNC0(dev, ITVC_WRITE_DIR, temp);
	temp = temp|((0x05)<<10);
	FUNC0(dev, ITVC_WRITE_DIR, temp);

	return FUNC1(dev);
}