; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/amiga/extr_config.c_amiga_get_hardware_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/amiga/extr_config.c_amiga_get_hardware_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }

@CHIP_RAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Chip RAM:\09%ldK\0A\00", align 1
@amiga_chip_size = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"PS Freq:\09%dHz\0AEClock Freq:\09%ldHz\0A\00", align 1
@amiga_psfreq = common dso_local global i32 0, align 4
@amiga_eclock = common dso_local global i32 0, align 4
@AMI_VIDEO = common dso_local global i32 0, align 4
@amiga_chipset = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"OCS\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"ECS\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"AGA\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Old or Unknown\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"Graphics:\09%s\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"Detected hardware:\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"\09%s\0A\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"Amiga Video\00", align 1
@AMI_BLITTER = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [8 x i8] c"Blitter\00", align 1
@AMBER_FF = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [20 x i8] c"Amber Flicker Fixer\00", align 1
@AMI_AUDIO = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [12 x i8] c"Amiga Audio\00", align 1
@AMI_FLOPPY = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [18 x i8] c"Floppy Controller\00", align 1
@A3000_SCSI = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [38 x i8] c"SCSI Controller WD33C93 (A3000 style)\00", align 1
@A4000_SCSI = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [41 x i8] c"SCSI Controller NCR53C710 (A4000T style)\00", align 1
@A1200_IDE = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [28 x i8] c"IDE Interface (A1200 style)\00", align 1
@A4000_IDE = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [28 x i8] c"IDE Interface (A4000 style)\00", align 1
@CD_ROM = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [22 x i8] c"Internal CD ROM drive\00", align 1
@AMI_KEYBOARD = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [9 x i8] c"Keyboard\00", align 1
@AMI_MOUSE = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [11 x i8] c"Mouse Port\00", align 1
@AMI_SERIAL = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [12 x i8] c"Serial Port\00", align 1
@AMI_PARALLEL = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [14 x i8] c"Parallel Port\00", align 1
@A2000_CLK = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [29 x i8] c"Hardware Clock (A2000 style)\00", align 1
@A3000_CLK = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [29 x i8] c"Hardware Clock (A3000 style)\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"Chip RAM\00", align 1
@PAULA = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [11 x i8] c"Paula 8364\00", align 1
@DENISE = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [12 x i8] c"Denise 8362\00", align 1
@DENISE_HR = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [12 x i8] c"Denise 8373\00", align 1
@LISA = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [10 x i8] c"Lisa 8375\00", align 1
@AGNUS_PAL = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [31 x i8] c"Normal/Fat PAL Agnus 8367/8371\00", align 1
@AGNUS_NTSC = common dso_local global i32 0, align 4
@.str.31 = private unnamed_addr constant [32 x i8] c"Normal/Fat NTSC Agnus 8361/8370\00", align 1
@AGNUS_HR_PAL = common dso_local global i32 0, align 4
@.str.32 = private unnamed_addr constant [25 x i8] c"Fat Hires PAL Agnus 8372\00", align 1
@AGNUS_HR_NTSC = common dso_local global i32 0, align 4
@.str.33 = private unnamed_addr constant [26 x i8] c"Fat Hires NTSC Agnus 8372\00", align 1
@ALICE_PAL = common dso_local global i32 0, align 4
@.str.34 = private unnamed_addr constant [15 x i8] c"PAL Alice 8374\00", align 1
@ALICE_NTSC = common dso_local global i32 0, align 4
@.str.35 = private unnamed_addr constant [16 x i8] c"NTSC Alice 8374\00", align 1
@MAGIC_REKICK = common dso_local global i32 0, align 4
@.str.36 = private unnamed_addr constant [18 x i8] c"Magic Hard Rekick\00", align 1
@PCMCIA = common dso_local global i32 0, align 4
@.str.37 = private unnamed_addr constant [12 x i8] c"PCMCIA Slot\00", align 1
@ZORRO = common dso_local global i32 0, align 4
@ZORRO3 = common dso_local global i32 0, align 4
@zorro_num_autocon = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*)* @amiga_get_hardware_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amiga_get_hardware_list(%struct.seq_file* %0) #0 {
  %2 = alloca %struct.seq_file*, align 8
  %3 = alloca i8*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %2, align 8
  %4 = load i32, i32* @CHIP_RAM, align 4
  %5 = call i64 @AMIGAHW_PRESENT(i32 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %9 = load i32, i32* @amiga_chip_size, align 4
  %10 = ashr i32 %9, 10
  %11 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %10)
  br label %12

12:                                               ; preds = %7, %1
  %13 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %14 = load i32, i32* @amiga_psfreq, align 4
  %15 = load i32, i32* @amiga_eclock, align 4
  %16 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %13, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %14, i32 %15)
  %17 = load i32, i32* @AMI_VIDEO, align 4
  %18 = call i64 @AMIGAHW_PRESENT(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %12
  %21 = load i32, i32* @amiga_chipset, align 4
  switch i32 %21, label %25 [
    i32 128, label %22
    i32 129, label %23
    i32 130, label %24
  ]

22:                                               ; preds = %20
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %26

23:                                               ; preds = %20
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %26

24:                                               ; preds = %20
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8** %3, align 8
  br label %26

25:                                               ; preds = %20
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8** %3, align 8
  br label %26

26:                                               ; preds = %25, %24, %23, %22
  %27 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %28 = load i8*, i8** %3, align 8
  %29 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %27, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8* %28)
  br label %30

30:                                               ; preds = %26, %12
  %31 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %32 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %31, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  %33 = load i32, i32* @AMI_VIDEO, align 4
  %34 = call i64 @AMIGAHW_PRESENT(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %38 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  br label %39

39:                                               ; preds = %36, %30
  %40 = load i32, i32* @AMI_BLITTER, align 4
  %41 = call i64 @AMIGAHW_PRESENT(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %45 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  br label %46

46:                                               ; preds = %43, %39
  %47 = load i32, i32* @AMBER_FF, align 4
  %48 = call i64 @AMIGAHW_PRESENT(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %52 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0))
  br label %53

53:                                               ; preds = %50, %46
  %54 = load i32, i32* @AMI_AUDIO, align 4
  %55 = call i64 @AMIGAHW_PRESENT(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %59 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  br label %60

60:                                               ; preds = %57, %53
  %61 = load i32, i32* @AMI_FLOPPY, align 4
  %62 = call i64 @AMIGAHW_PRESENT(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %66 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %65, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0))
  br label %67

67:                                               ; preds = %64, %60
  %68 = load i32, i32* @A3000_SCSI, align 4
  %69 = call i64 @AMIGAHW_PRESENT(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %73 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %72, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.14, i64 0, i64 0))
  br label %74

74:                                               ; preds = %71, %67
  %75 = load i32, i32* @A4000_SCSI, align 4
  %76 = call i64 @AMIGAHW_PRESENT(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %74
  %79 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %80 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %79, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.15, i64 0, i64 0))
  br label %81

81:                                               ; preds = %78, %74
  %82 = load i32, i32* @A1200_IDE, align 4
  %83 = call i64 @AMIGAHW_PRESENT(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %81
  %86 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %87 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %86, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i64 0, i64 0))
  br label %88

88:                                               ; preds = %85, %81
  %89 = load i32, i32* @A4000_IDE, align 4
  %90 = call i64 @AMIGAHW_PRESENT(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %88
  %93 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %94 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %93, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i64 0, i64 0))
  br label %95

95:                                               ; preds = %92, %88
  %96 = load i32, i32* @CD_ROM, align 4
  %97 = call i64 @AMIGAHW_PRESENT(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %95
  %100 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %101 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %100, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i64 0, i64 0))
  br label %102

102:                                              ; preds = %99, %95
  %103 = load i32, i32* @AMI_KEYBOARD, align 4
  %104 = call i64 @AMIGAHW_PRESENT(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %102
  %107 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %108 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %107, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0))
  br label %109

109:                                              ; preds = %106, %102
  %110 = load i32, i32* @AMI_MOUSE, align 4
  %111 = call i64 @AMIGAHW_PRESENT(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %109
  %114 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %115 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %114, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0))
  br label %116

116:                                              ; preds = %113, %109
  %117 = load i32, i32* @AMI_SERIAL, align 4
  %118 = call i64 @AMIGAHW_PRESENT(i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %116
  %121 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %122 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %121, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i64 0, i64 0))
  br label %123

123:                                              ; preds = %120, %116
  %124 = load i32, i32* @AMI_PARALLEL, align 4
  %125 = call i64 @AMIGAHW_PRESENT(i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %123
  %128 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %129 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %128, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0))
  br label %130

130:                                              ; preds = %127, %123
  %131 = load i32, i32* @A2000_CLK, align 4
  %132 = call i64 @AMIGAHW_PRESENT(i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %130
  %135 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %136 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %135, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23, i64 0, i64 0))
  br label %137

137:                                              ; preds = %134, %130
  %138 = load i32, i32* @A3000_CLK, align 4
  %139 = call i64 @AMIGAHW_PRESENT(i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %137
  %142 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %143 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %142, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.24, i64 0, i64 0))
  br label %144

144:                                              ; preds = %141, %137
  %145 = load i32, i32* @CHIP_RAM, align 4
  %146 = call i64 @AMIGAHW_PRESENT(i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %144
  %149 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %150 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %149, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0))
  br label %151

151:                                              ; preds = %148, %144
  %152 = load i32, i32* @PAULA, align 4
  %153 = call i64 @AMIGAHW_PRESENT(i32 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %151
  %156 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %157 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %156, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i64 0, i64 0))
  br label %158

158:                                              ; preds = %155, %151
  %159 = load i32, i32* @DENISE, align 4
  %160 = call i64 @AMIGAHW_PRESENT(i32 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %158
  %163 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %164 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %163, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i64 0, i64 0))
  br label %165

165:                                              ; preds = %162, %158
  %166 = load i32, i32* @DENISE_HR, align 4
  %167 = call i64 @AMIGAHW_PRESENT(i32 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %165
  %170 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %171 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %170, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0))
  br label %172

172:                                              ; preds = %169, %165
  %173 = load i32, i32* @LISA, align 4
  %174 = call i64 @AMIGAHW_PRESENT(i32 %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %172
  %177 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %178 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %177, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i64 0, i64 0))
  br label %179

179:                                              ; preds = %176, %172
  %180 = load i32, i32* @AGNUS_PAL, align 4
  %181 = call i64 @AMIGAHW_PRESENT(i32 %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %179
  %184 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %185 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %184, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.30, i64 0, i64 0))
  br label %186

186:                                              ; preds = %183, %179
  %187 = load i32, i32* @AGNUS_NTSC, align 4
  %188 = call i64 @AMIGAHW_PRESENT(i32 %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %193

190:                                              ; preds = %186
  %191 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %192 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %191, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.31, i64 0, i64 0))
  br label %193

193:                                              ; preds = %190, %186
  %194 = load i32, i32* @AGNUS_HR_PAL, align 4
  %195 = call i64 @AMIGAHW_PRESENT(i32 %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %200

197:                                              ; preds = %193
  %198 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %199 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %198, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.32, i64 0, i64 0))
  br label %200

200:                                              ; preds = %197, %193
  %201 = load i32, i32* @AGNUS_HR_NTSC, align 4
  %202 = call i64 @AMIGAHW_PRESENT(i32 %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %207

204:                                              ; preds = %200
  %205 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %206 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %205, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.33, i64 0, i64 0))
  br label %207

207:                                              ; preds = %204, %200
  %208 = load i32, i32* @ALICE_PAL, align 4
  %209 = call i64 @AMIGAHW_PRESENT(i32 %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %214

211:                                              ; preds = %207
  %212 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %213 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %212, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i64 0, i64 0))
  br label %214

214:                                              ; preds = %211, %207
  %215 = load i32, i32* @ALICE_NTSC, align 4
  %216 = call i64 @AMIGAHW_PRESENT(i32 %215)
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %221

218:                                              ; preds = %214
  %219 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %220 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %219, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.35, i64 0, i64 0))
  br label %221

221:                                              ; preds = %218, %214
  %222 = load i32, i32* @MAGIC_REKICK, align 4
  %223 = call i64 @AMIGAHW_PRESENT(i32 %222)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %228

225:                                              ; preds = %221
  %226 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %227 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %226, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.36, i64 0, i64 0))
  br label %228

228:                                              ; preds = %225, %221
  %229 = load i32, i32* @PCMCIA, align 4
  %230 = call i64 @AMIGAHW_PRESENT(i32 %229)
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %235

232:                                              ; preds = %228
  %233 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %234 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %233, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i64 0, i64 0))
  br label %235

235:                                              ; preds = %232, %228
  ret void
}

declare dso_local i64 @AMIGAHW_PRESENT(i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
