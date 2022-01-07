; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_main.c_be_flash_BEx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_main.c_be_flash_BEx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.firmware = type { i32, i32* }
%struct.be_dma_mem = type { i32 }
%struct.flash_comp = type { i64, i64, i32, i32, i64, i32, i32, i32 }
%struct.flash_section_info = type { i32 }

@FLASH_iSCSI_PRIMARY_IMAGE_START_g3 = common dso_local global i32 0, align 4
@OPTYPE_ISCSI_ACTIVE = common dso_local global i64 0, align 8
@FLASH_IMAGE_MAX_SIZE_g3 = common dso_local global i32 0, align 4
@IMAGE_FIRMWARE_iSCSI = common dso_local global i32 0, align 4
@FLASH_REDBOOT_START_g3 = common dso_local global i32 0, align 4
@OPTYPE_REDBOOT = common dso_local global i64 0, align 8
@FLASH_REDBOOT_IMAGE_MAX_SIZE_g3 = common dso_local global i32 0, align 4
@IMAGE_BOOT_CODE = common dso_local global i32 0, align 4
@FLASH_iSCSI_BIOS_START_g3 = common dso_local global i32 0, align 4
@OPTYPE_BIOS = common dso_local global i64 0, align 8
@FLASH_BIOS_IMAGE_MAX_SIZE_g3 = common dso_local global i32 0, align 4
@IMAGE_OPTION_ROM_ISCSI = common dso_local global i32 0, align 4
@FLASH_PXE_BIOS_START_g3 = common dso_local global i32 0, align 4
@OPTYPE_PXE_BIOS = common dso_local global i64 0, align 8
@IMAGE_OPTION_ROM_PXE = common dso_local global i32 0, align 4
@FLASH_FCoE_BIOS_START_g3 = common dso_local global i32 0, align 4
@OPTYPE_FCOE_BIOS = common dso_local global i64 0, align 8
@IMAGE_OPTION_ROM_FCoE = common dso_local global i32 0, align 4
@FLASH_iSCSI_BACKUP_IMAGE_START_g3 = common dso_local global i32 0, align 4
@OPTYPE_ISCSI_BACKUP = common dso_local global i64 0, align 8
@IMAGE_FIRMWARE_BACKUP_iSCSI = common dso_local global i32 0, align 4
@FLASH_FCoE_PRIMARY_IMAGE_START_g3 = common dso_local global i32 0, align 4
@OPTYPE_FCOE_FW_ACTIVE = common dso_local global i64 0, align 8
@IMAGE_FIRMWARE_FCoE = common dso_local global i32 0, align 4
@FLASH_FCoE_BACKUP_IMAGE_START_g3 = common dso_local global i32 0, align 4
@OPTYPE_FCOE_FW_BACKUP = common dso_local global i64 0, align 8
@IMAGE_FIRMWARE_BACKUP_FCoE = common dso_local global i32 0, align 4
@FLASH_NCSI_START_g3 = common dso_local global i32 0, align 4
@OPTYPE_NCSI_FW = common dso_local global i64 0, align 8
@FLASH_NCSI_IMAGE_MAX_SIZE_g3 = common dso_local global i32 0, align 4
@IMAGE_NCSI = common dso_local global i32 0, align 4
@FLASH_PHY_FW_START_g3 = common dso_local global i32 0, align 4
@OPTYPE_PHY_FW = common dso_local global i64 0, align 8
@FLASH_PHY_FW_IMAGE_MAX_SIZE_g3 = common dso_local global i32 0, align 4
@IMAGE_FIRMWARE_PHY = common dso_local global i32 0, align 4
@FLASH_iSCSI_PRIMARY_IMAGE_START_g2 = common dso_local global i32 0, align 4
@FLASH_IMAGE_MAX_SIZE_g2 = common dso_local global i32 0, align 4
@FLASH_REDBOOT_START_g2 = common dso_local global i32 0, align 4
@FLASH_REDBOOT_IMAGE_MAX_SIZE_g2 = common dso_local global i32 0, align 4
@FLASH_iSCSI_BIOS_START_g2 = common dso_local global i32 0, align 4
@FLASH_BIOS_IMAGE_MAX_SIZE_g2 = common dso_local global i32 0, align 4
@FLASH_PXE_BIOS_START_g2 = common dso_local global i32 0, align 4
@FLASH_FCoE_BIOS_START_g2 = common dso_local global i32 0, align 4
@FLASH_iSCSI_BACKUP_IMAGE_START_g2 = common dso_local global i32 0, align 4
@FLASH_FCoE_PRIMARY_IMAGE_START_g2 = common dso_local global i32 0, align 4
@FLASH_FCoE_BACKUP_IMAGE_START_g2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Invalid Cookie. UFI corrupted ?\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"3.102.148.0\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Flashing section type %d failed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.be_adapter*, %struct.firmware*, %struct.be_dma_mem*, i32)* @be_flash_BEx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_flash_BEx(%struct.be_adapter* %0, %struct.firmware* %1, %struct.be_dma_mem* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.be_adapter*, align 8
  %7 = alloca %struct.firmware*, align 8
  %8 = alloca %struct.be_dma_mem*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca %struct.flash_comp*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.flash_section_info*, align 8
  %19 = alloca [10 x %struct.flash_comp], align 16
  %20 = alloca [8 x %struct.flash_comp], align 16
  store %struct.be_adapter* %0, %struct.be_adapter** %6, align 8
  store %struct.firmware* %1, %struct.firmware** %7, align 8
  store %struct.be_dma_mem* %2, %struct.be_dma_mem** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  %23 = mul i64 %22, 4
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %13, align 4
  %25 = load %struct.firmware*, %struct.firmware** %7, align 8
  %26 = getelementptr inbounds %struct.firmware, %struct.firmware* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %14, align 8
  store %struct.flash_section_info* null, %struct.flash_section_info** %18, align 8
  %28 = getelementptr inbounds [10 x %struct.flash_comp], [10 x %struct.flash_comp]* %19, i64 0, i64 0
  %29 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %28, i32 0, i32 0
  %30 = load i32, i32* @FLASH_iSCSI_PRIMARY_IMAGE_START_g3, align 4
  %31 = sext i32 %30 to i64
  store i64 %31, i64* %29, align 16
  %32 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %28, i32 0, i32 1
  %33 = load i64, i64* @OPTYPE_ISCSI_ACTIVE, align 8
  store i64 %33, i64* %32, align 8
  %34 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %28, i32 0, i32 2
  %35 = load i32, i32* @FLASH_IMAGE_MAX_SIZE_g3, align 4
  store i32 %35, i32* %34, align 16
  %36 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %28, i32 0, i32 3
  %37 = load i32, i32* @IMAGE_FIRMWARE_iSCSI, align 4
  store i32 %37, i32* %36, align 4
  %38 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %28, i32 0, i32 4
  store i64 0, i64* %38, align 8
  %39 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %28, i32 0, i32 5
  store i32 0, i32* %39, align 16
  %40 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %28, i32 0, i32 6
  store i32 0, i32* %40, align 4
  %41 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %28, i32 0, i32 7
  store i32 0, i32* %41, align 8
  %42 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %28, i64 1
  %43 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %42, i32 0, i32 0
  %44 = load i32, i32* @FLASH_REDBOOT_START_g3, align 4
  %45 = sext i32 %44 to i64
  store i64 %45, i64* %43, align 16
  %46 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %42, i32 0, i32 1
  %47 = load i64, i64* @OPTYPE_REDBOOT, align 8
  store i64 %47, i64* %46, align 8
  %48 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %42, i32 0, i32 2
  %49 = load i32, i32* @FLASH_REDBOOT_IMAGE_MAX_SIZE_g3, align 4
  store i32 %49, i32* %48, align 16
  %50 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %42, i32 0, i32 3
  %51 = load i32, i32* @IMAGE_BOOT_CODE, align 4
  store i32 %51, i32* %50, align 4
  %52 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %42, i32 0, i32 4
  store i64 0, i64* %52, align 8
  %53 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %42, i32 0, i32 5
  store i32 0, i32* %53, align 16
  %54 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %42, i32 0, i32 6
  store i32 0, i32* %54, align 4
  %55 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %42, i32 0, i32 7
  store i32 0, i32* %55, align 8
  %56 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %42, i64 1
  %57 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %56, i32 0, i32 0
  %58 = load i32, i32* @FLASH_iSCSI_BIOS_START_g3, align 4
  %59 = sext i32 %58 to i64
  store i64 %59, i64* %57, align 16
  %60 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %56, i32 0, i32 1
  %61 = load i64, i64* @OPTYPE_BIOS, align 8
  store i64 %61, i64* %60, align 8
  %62 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %56, i32 0, i32 2
  %63 = load i32, i32* @FLASH_BIOS_IMAGE_MAX_SIZE_g3, align 4
  store i32 %63, i32* %62, align 16
  %64 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %56, i32 0, i32 3
  %65 = load i32, i32* @IMAGE_OPTION_ROM_ISCSI, align 4
  store i32 %65, i32* %64, align 4
  %66 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %56, i32 0, i32 4
  store i64 0, i64* %66, align 8
  %67 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %56, i32 0, i32 5
  store i32 0, i32* %67, align 16
  %68 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %56, i32 0, i32 6
  store i32 0, i32* %68, align 4
  %69 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %56, i32 0, i32 7
  store i32 0, i32* %69, align 8
  %70 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %56, i64 1
  %71 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %70, i32 0, i32 0
  %72 = load i32, i32* @FLASH_PXE_BIOS_START_g3, align 4
  %73 = sext i32 %72 to i64
  store i64 %73, i64* %71, align 16
  %74 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %70, i32 0, i32 1
  %75 = load i64, i64* @OPTYPE_PXE_BIOS, align 8
  store i64 %75, i64* %74, align 8
  %76 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %70, i32 0, i32 2
  %77 = load i32, i32* @FLASH_BIOS_IMAGE_MAX_SIZE_g3, align 4
  store i32 %77, i32* %76, align 16
  %78 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %70, i32 0, i32 3
  %79 = load i32, i32* @IMAGE_OPTION_ROM_PXE, align 4
  store i32 %79, i32* %78, align 4
  %80 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %70, i32 0, i32 4
  store i64 0, i64* %80, align 8
  %81 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %70, i32 0, i32 5
  store i32 0, i32* %81, align 16
  %82 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %70, i32 0, i32 6
  store i32 0, i32* %82, align 4
  %83 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %70, i32 0, i32 7
  store i32 0, i32* %83, align 8
  %84 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %70, i64 1
  %85 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %84, i32 0, i32 0
  %86 = load i32, i32* @FLASH_FCoE_BIOS_START_g3, align 4
  %87 = sext i32 %86 to i64
  store i64 %87, i64* %85, align 16
  %88 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %84, i32 0, i32 1
  %89 = load i64, i64* @OPTYPE_FCOE_BIOS, align 8
  store i64 %89, i64* %88, align 8
  %90 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %84, i32 0, i32 2
  %91 = load i32, i32* @FLASH_BIOS_IMAGE_MAX_SIZE_g3, align 4
  store i32 %91, i32* %90, align 16
  %92 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %84, i32 0, i32 3
  %93 = load i32, i32* @IMAGE_OPTION_ROM_FCoE, align 4
  store i32 %93, i32* %92, align 4
  %94 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %84, i32 0, i32 4
  store i64 0, i64* %94, align 8
  %95 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %84, i32 0, i32 5
  store i32 0, i32* %95, align 16
  %96 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %84, i32 0, i32 6
  store i32 0, i32* %96, align 4
  %97 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %84, i32 0, i32 7
  store i32 0, i32* %97, align 8
  %98 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %84, i64 1
  %99 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %98, i32 0, i32 0
  %100 = load i32, i32* @FLASH_iSCSI_BACKUP_IMAGE_START_g3, align 4
  %101 = sext i32 %100 to i64
  store i64 %101, i64* %99, align 16
  %102 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %98, i32 0, i32 1
  %103 = load i64, i64* @OPTYPE_ISCSI_BACKUP, align 8
  store i64 %103, i64* %102, align 8
  %104 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %98, i32 0, i32 2
  %105 = load i32, i32* @FLASH_IMAGE_MAX_SIZE_g3, align 4
  store i32 %105, i32* %104, align 16
  %106 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %98, i32 0, i32 3
  %107 = load i32, i32* @IMAGE_FIRMWARE_BACKUP_iSCSI, align 4
  store i32 %107, i32* %106, align 4
  %108 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %98, i32 0, i32 4
  store i64 0, i64* %108, align 8
  %109 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %98, i32 0, i32 5
  store i32 0, i32* %109, align 16
  %110 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %98, i32 0, i32 6
  store i32 0, i32* %110, align 4
  %111 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %98, i32 0, i32 7
  store i32 0, i32* %111, align 8
  %112 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %98, i64 1
  %113 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %112, i32 0, i32 0
  %114 = load i32, i32* @FLASH_FCoE_PRIMARY_IMAGE_START_g3, align 4
  %115 = sext i32 %114 to i64
  store i64 %115, i64* %113, align 16
  %116 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %112, i32 0, i32 1
  %117 = load i64, i64* @OPTYPE_FCOE_FW_ACTIVE, align 8
  store i64 %117, i64* %116, align 8
  %118 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %112, i32 0, i32 2
  %119 = load i32, i32* @FLASH_IMAGE_MAX_SIZE_g3, align 4
  store i32 %119, i32* %118, align 16
  %120 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %112, i32 0, i32 3
  %121 = load i32, i32* @IMAGE_FIRMWARE_FCoE, align 4
  store i32 %121, i32* %120, align 4
  %122 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %112, i32 0, i32 4
  store i64 0, i64* %122, align 8
  %123 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %112, i32 0, i32 5
  store i32 0, i32* %123, align 16
  %124 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %112, i32 0, i32 6
  store i32 0, i32* %124, align 4
  %125 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %112, i32 0, i32 7
  store i32 0, i32* %125, align 8
  %126 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %112, i64 1
  %127 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %126, i32 0, i32 0
  %128 = load i32, i32* @FLASH_FCoE_BACKUP_IMAGE_START_g3, align 4
  %129 = sext i32 %128 to i64
  store i64 %129, i64* %127, align 16
  %130 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %126, i32 0, i32 1
  %131 = load i64, i64* @OPTYPE_FCOE_FW_BACKUP, align 8
  store i64 %131, i64* %130, align 8
  %132 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %126, i32 0, i32 2
  %133 = load i32, i32* @FLASH_IMAGE_MAX_SIZE_g3, align 4
  store i32 %133, i32* %132, align 16
  %134 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %126, i32 0, i32 3
  %135 = load i32, i32* @IMAGE_FIRMWARE_BACKUP_FCoE, align 4
  store i32 %135, i32* %134, align 4
  %136 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %126, i32 0, i32 4
  store i64 0, i64* %136, align 8
  %137 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %126, i32 0, i32 5
  store i32 0, i32* %137, align 16
  %138 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %126, i32 0, i32 6
  store i32 0, i32* %138, align 4
  %139 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %126, i32 0, i32 7
  store i32 0, i32* %139, align 8
  %140 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %126, i64 1
  %141 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %140, i32 0, i32 0
  %142 = load i32, i32* @FLASH_NCSI_START_g3, align 4
  %143 = sext i32 %142 to i64
  store i64 %143, i64* %141, align 16
  %144 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %140, i32 0, i32 1
  %145 = load i64, i64* @OPTYPE_NCSI_FW, align 8
  store i64 %145, i64* %144, align 8
  %146 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %140, i32 0, i32 2
  %147 = load i32, i32* @FLASH_NCSI_IMAGE_MAX_SIZE_g3, align 4
  store i32 %147, i32* %146, align 16
  %148 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %140, i32 0, i32 3
  %149 = load i32, i32* @IMAGE_NCSI, align 4
  store i32 %149, i32* %148, align 4
  %150 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %140, i32 0, i32 4
  store i64 0, i64* %150, align 8
  %151 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %140, i32 0, i32 5
  store i32 0, i32* %151, align 16
  %152 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %140, i32 0, i32 6
  store i32 0, i32* %152, align 4
  %153 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %140, i32 0, i32 7
  store i32 0, i32* %153, align 8
  %154 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %140, i64 1
  %155 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %154, i32 0, i32 0
  %156 = load i32, i32* @FLASH_PHY_FW_START_g3, align 4
  %157 = sext i32 %156 to i64
  store i64 %157, i64* %155, align 16
  %158 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %154, i32 0, i32 1
  %159 = load i64, i64* @OPTYPE_PHY_FW, align 8
  store i64 %159, i64* %158, align 8
  %160 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %154, i32 0, i32 2
  %161 = load i32, i32* @FLASH_PHY_FW_IMAGE_MAX_SIZE_g3, align 4
  store i32 %161, i32* %160, align 16
  %162 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %154, i32 0, i32 3
  %163 = load i32, i32* @IMAGE_FIRMWARE_PHY, align 4
  store i32 %163, i32* %162, align 4
  %164 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %154, i32 0, i32 4
  store i64 0, i64* %164, align 8
  %165 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %154, i32 0, i32 5
  store i32 0, i32* %165, align 16
  %166 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %154, i32 0, i32 6
  store i32 0, i32* %166, align 4
  %167 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %154, i32 0, i32 7
  store i32 0, i32* %167, align 8
  %168 = getelementptr inbounds [8 x %struct.flash_comp], [8 x %struct.flash_comp]* %20, i64 0, i64 0
  %169 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %168, i32 0, i32 0
  %170 = load i32, i32* @FLASH_iSCSI_PRIMARY_IMAGE_START_g2, align 4
  %171 = sext i32 %170 to i64
  store i64 %171, i64* %169, align 16
  %172 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %168, i32 0, i32 1
  %173 = load i64, i64* @OPTYPE_ISCSI_ACTIVE, align 8
  store i64 %173, i64* %172, align 8
  %174 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %168, i32 0, i32 2
  %175 = load i32, i32* @FLASH_IMAGE_MAX_SIZE_g2, align 4
  store i32 %175, i32* %174, align 16
  %176 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %168, i32 0, i32 3
  %177 = load i32, i32* @IMAGE_FIRMWARE_iSCSI, align 4
  store i32 %177, i32* %176, align 4
  %178 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %168, i32 0, i32 4
  store i64 0, i64* %178, align 8
  %179 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %168, i32 0, i32 5
  store i32 0, i32* %179, align 16
  %180 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %168, i32 0, i32 6
  store i32 0, i32* %180, align 4
  %181 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %168, i32 0, i32 7
  store i32 0, i32* %181, align 8
  %182 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %168, i64 1
  %183 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %182, i32 0, i32 0
  %184 = load i32, i32* @FLASH_REDBOOT_START_g2, align 4
  %185 = sext i32 %184 to i64
  store i64 %185, i64* %183, align 16
  %186 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %182, i32 0, i32 1
  %187 = load i64, i64* @OPTYPE_REDBOOT, align 8
  store i64 %187, i64* %186, align 8
  %188 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %182, i32 0, i32 2
  %189 = load i32, i32* @FLASH_REDBOOT_IMAGE_MAX_SIZE_g2, align 4
  store i32 %189, i32* %188, align 16
  %190 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %182, i32 0, i32 3
  %191 = load i32, i32* @IMAGE_BOOT_CODE, align 4
  store i32 %191, i32* %190, align 4
  %192 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %182, i32 0, i32 4
  store i64 0, i64* %192, align 8
  %193 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %182, i32 0, i32 5
  store i32 0, i32* %193, align 16
  %194 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %182, i32 0, i32 6
  store i32 0, i32* %194, align 4
  %195 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %182, i32 0, i32 7
  store i32 0, i32* %195, align 8
  %196 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %182, i64 1
  %197 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %196, i32 0, i32 0
  %198 = load i32, i32* @FLASH_iSCSI_BIOS_START_g2, align 4
  %199 = sext i32 %198 to i64
  store i64 %199, i64* %197, align 16
  %200 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %196, i32 0, i32 1
  %201 = load i64, i64* @OPTYPE_BIOS, align 8
  store i64 %201, i64* %200, align 8
  %202 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %196, i32 0, i32 2
  %203 = load i32, i32* @FLASH_BIOS_IMAGE_MAX_SIZE_g2, align 4
  store i32 %203, i32* %202, align 16
  %204 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %196, i32 0, i32 3
  %205 = load i32, i32* @IMAGE_OPTION_ROM_ISCSI, align 4
  store i32 %205, i32* %204, align 4
  %206 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %196, i32 0, i32 4
  store i64 0, i64* %206, align 8
  %207 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %196, i32 0, i32 5
  store i32 0, i32* %207, align 16
  %208 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %196, i32 0, i32 6
  store i32 0, i32* %208, align 4
  %209 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %196, i32 0, i32 7
  store i32 0, i32* %209, align 8
  %210 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %196, i64 1
  %211 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %210, i32 0, i32 0
  %212 = load i32, i32* @FLASH_PXE_BIOS_START_g2, align 4
  %213 = sext i32 %212 to i64
  store i64 %213, i64* %211, align 16
  %214 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %210, i32 0, i32 1
  %215 = load i64, i64* @OPTYPE_PXE_BIOS, align 8
  store i64 %215, i64* %214, align 8
  %216 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %210, i32 0, i32 2
  %217 = load i32, i32* @FLASH_BIOS_IMAGE_MAX_SIZE_g2, align 4
  store i32 %217, i32* %216, align 16
  %218 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %210, i32 0, i32 3
  %219 = load i32, i32* @IMAGE_OPTION_ROM_PXE, align 4
  store i32 %219, i32* %218, align 4
  %220 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %210, i32 0, i32 4
  store i64 0, i64* %220, align 8
  %221 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %210, i32 0, i32 5
  store i32 0, i32* %221, align 16
  %222 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %210, i32 0, i32 6
  store i32 0, i32* %222, align 4
  %223 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %210, i32 0, i32 7
  store i32 0, i32* %223, align 8
  %224 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %210, i64 1
  %225 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %224, i32 0, i32 0
  %226 = load i32, i32* @FLASH_FCoE_BIOS_START_g2, align 4
  %227 = sext i32 %226 to i64
  store i64 %227, i64* %225, align 16
  %228 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %224, i32 0, i32 1
  %229 = load i64, i64* @OPTYPE_FCOE_BIOS, align 8
  store i64 %229, i64* %228, align 8
  %230 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %224, i32 0, i32 2
  %231 = load i32, i32* @FLASH_BIOS_IMAGE_MAX_SIZE_g2, align 4
  store i32 %231, i32* %230, align 16
  %232 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %224, i32 0, i32 3
  %233 = load i32, i32* @IMAGE_OPTION_ROM_FCoE, align 4
  store i32 %233, i32* %232, align 4
  %234 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %224, i32 0, i32 4
  store i64 0, i64* %234, align 8
  %235 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %224, i32 0, i32 5
  store i32 0, i32* %235, align 16
  %236 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %224, i32 0, i32 6
  store i32 0, i32* %236, align 4
  %237 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %224, i32 0, i32 7
  store i32 0, i32* %237, align 8
  %238 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %224, i64 1
  %239 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %238, i32 0, i32 0
  %240 = load i32, i32* @FLASH_iSCSI_BACKUP_IMAGE_START_g2, align 4
  %241 = sext i32 %240 to i64
  store i64 %241, i64* %239, align 16
  %242 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %238, i32 0, i32 1
  %243 = load i64, i64* @OPTYPE_ISCSI_BACKUP, align 8
  store i64 %243, i64* %242, align 8
  %244 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %238, i32 0, i32 2
  %245 = load i32, i32* @FLASH_IMAGE_MAX_SIZE_g2, align 4
  store i32 %245, i32* %244, align 16
  %246 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %238, i32 0, i32 3
  %247 = load i32, i32* @IMAGE_FIRMWARE_BACKUP_iSCSI, align 4
  store i32 %247, i32* %246, align 4
  %248 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %238, i32 0, i32 4
  store i64 0, i64* %248, align 8
  %249 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %238, i32 0, i32 5
  store i32 0, i32* %249, align 16
  %250 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %238, i32 0, i32 6
  store i32 0, i32* %250, align 4
  %251 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %238, i32 0, i32 7
  store i32 0, i32* %251, align 8
  %252 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %238, i64 1
  %253 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %252, i32 0, i32 0
  %254 = load i32, i32* @FLASH_FCoE_PRIMARY_IMAGE_START_g2, align 4
  %255 = sext i32 %254 to i64
  store i64 %255, i64* %253, align 16
  %256 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %252, i32 0, i32 1
  %257 = load i64, i64* @OPTYPE_FCOE_FW_ACTIVE, align 8
  store i64 %257, i64* %256, align 8
  %258 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %252, i32 0, i32 2
  %259 = load i32, i32* @FLASH_IMAGE_MAX_SIZE_g2, align 4
  store i32 %259, i32* %258, align 16
  %260 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %252, i32 0, i32 3
  %261 = load i32, i32* @IMAGE_FIRMWARE_FCoE, align 4
  store i32 %261, i32* %260, align 4
  %262 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %252, i32 0, i32 4
  store i64 0, i64* %262, align 8
  %263 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %252, i32 0, i32 5
  store i32 0, i32* %263, align 16
  %264 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %252, i32 0, i32 6
  store i32 0, i32* %264, align 4
  %265 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %252, i32 0, i32 7
  store i32 0, i32* %265, align 8
  %266 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %252, i64 1
  %267 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %266, i32 0, i32 0
  %268 = load i32, i32* @FLASH_FCoE_BACKUP_IMAGE_START_g2, align 4
  %269 = sext i32 %268 to i64
  store i64 %269, i64* %267, align 16
  %270 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %266, i32 0, i32 1
  %271 = load i64, i64* @OPTYPE_FCOE_FW_BACKUP, align 8
  store i64 %271, i64* %270, align 8
  %272 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %266, i32 0, i32 2
  %273 = load i32, i32* @FLASH_IMAGE_MAX_SIZE_g2, align 4
  store i32 %273, i32* %272, align 16
  %274 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %266, i32 0, i32 3
  %275 = load i32, i32* @IMAGE_FIRMWARE_BACKUP_FCoE, align 4
  store i32 %275, i32* %274, align 4
  %276 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %266, i32 0, i32 4
  store i64 0, i64* %276, align 8
  %277 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %266, i32 0, i32 5
  store i32 0, i32* %277, align 16
  %278 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %266, i32 0, i32 6
  store i32 0, i32* %278, align 4
  %279 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %266, i32 0, i32 7
  store i32 0, i32* %279, align 8
  %280 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %281 = call i64 @BE3_chip(%struct.be_adapter* %280)
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %287

283:                                              ; preds = %4
  %284 = getelementptr inbounds [10 x %struct.flash_comp], [10 x %struct.flash_comp]* %19, i64 0, i64 0
  store %struct.flash_comp* %284, %struct.flash_comp** %15, align 8
  store i32 4, i32* %12, align 4
  %285 = getelementptr inbounds [10 x %struct.flash_comp], [10 x %struct.flash_comp]* %19, i64 0, i64 0
  %286 = call i32 @ARRAY_SIZE(%struct.flash_comp* %285)
  store i32 %286, i32* %16, align 4
  br label %291

287:                                              ; preds = %4
  %288 = getelementptr inbounds [8 x %struct.flash_comp], [8 x %struct.flash_comp]* %20, i64 0, i64 0
  store %struct.flash_comp* %288, %struct.flash_comp** %15, align 8
  store i32 4, i32* %12, align 4
  %289 = getelementptr inbounds [8 x %struct.flash_comp], [8 x %struct.flash_comp]* %20, i64 0, i64 0
  %290 = call i32 @ARRAY_SIZE(%struct.flash_comp* %289)
  store i32 %290, i32* %16, align 4
  br label %291

291:                                              ; preds = %287, %283
  %292 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %293 = load i32, i32* %12, align 4
  %294 = load i32, i32* %13, align 4
  %295 = add nsw i32 %293, %294
  %296 = load %struct.firmware*, %struct.firmware** %7, align 8
  %297 = call %struct.flash_section_info* @get_fsec_info(%struct.be_adapter* %292, i32 %295, %struct.firmware* %296)
  store %struct.flash_section_info* %297, %struct.flash_section_info** %18, align 8
  %298 = load %struct.flash_section_info*, %struct.flash_section_info** %18, align 8
  %299 = icmp ne %struct.flash_section_info* %298, null
  br i1 %299, label %306, label %300

300:                                              ; preds = %291
  %301 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %302 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %301, i32 0, i32 0
  %303 = load %struct.TYPE_2__*, %struct.TYPE_2__** %302, align 8
  %304 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %303, i32 0, i32 0
  %305 = call i32 (i32*, i8*, ...) @dev_err(i32* %304, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %461

306:                                              ; preds = %291
  store i32 0, i32* %11, align 4
  br label %307

307:                                              ; preds = %457, %306
  %308 = load i32, i32* %11, align 4
  %309 = load i32, i32* %16, align 4
  %310 = icmp slt i32 %308, %309
  br i1 %310, label %311, label %460

311:                                              ; preds = %307
  %312 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %313 = load %struct.flash_section_info*, %struct.flash_section_info** %18, align 8
  %314 = load %struct.flash_comp*, %struct.flash_comp** %15, align 8
  %315 = load i32, i32* %11, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %314, i64 %316
  %318 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %317, i32 0, i32 3
  %319 = load i32, i32* %318, align 4
  %320 = call i32 @is_comp_in_ufi(%struct.be_adapter* %312, %struct.flash_section_info* %313, i32 %319)
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %323, label %322

322:                                              ; preds = %311
  br label %457

323:                                              ; preds = %311
  %324 = load %struct.flash_comp*, %struct.flash_comp** %15, align 8
  %325 = load i32, i32* %11, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %324, i64 %326
  %328 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %327, i32 0, i32 1
  %329 = load i64, i64* %328, align 8
  %330 = load i64, i64* @OPTYPE_NCSI_FW, align 8
  %331 = icmp eq i64 %329, %330
  br i1 %331, label %332, label %339

332:                                              ; preds = %323
  %333 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %334 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %333, i32 0, i32 1
  %335 = load i32, i32* %334, align 8
  %336 = call i64 @memcmp(i32 %335, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 11)
  %337 = icmp slt i64 %336, 0
  br i1 %337, label %338, label %339

338:                                              ; preds = %332
  br label %457

339:                                              ; preds = %332, %323
  %340 = load %struct.flash_comp*, %struct.flash_comp** %15, align 8
  %341 = load i32, i32* %11, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %340, i64 %342
  %344 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %343, i32 0, i32 1
  %345 = load i64, i64* %344, align 8
  %346 = load i64, i64* @OPTYPE_PHY_FW, align 8
  %347 = icmp eq i64 %345, %346
  br i1 %347, label %348, label %353

348:                                              ; preds = %339
  %349 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %350 = call i32 @phy_flashing_required(%struct.be_adapter* %349)
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %353, label %352

352:                                              ; preds = %348
  br label %457

353:                                              ; preds = %348, %339
  %354 = load %struct.flash_comp*, %struct.flash_comp** %15, align 8
  %355 = load i32, i32* %11, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %354, i64 %356
  %358 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %357, i32 0, i32 1
  %359 = load i64, i64* %358, align 8
  %360 = load i64, i64* @OPTYPE_REDBOOT, align 8
  %361 = icmp eq i64 %359, %360
  br i1 %361, label %362, label %387

362:                                              ; preds = %353
  %363 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %364 = load %struct.firmware*, %struct.firmware** %7, align 8
  %365 = getelementptr inbounds %struct.firmware, %struct.firmware* %364, i32 0, i32 1
  %366 = load i32*, i32** %365, align 8
  %367 = load %struct.flash_comp*, %struct.flash_comp** %15, align 8
  %368 = load i32, i32* %11, align 4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %367, i64 %369
  %371 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %370, i32 0, i32 4
  %372 = load i64, i64* %371, align 8
  %373 = load %struct.flash_comp*, %struct.flash_comp** %15, align 8
  %374 = load i32, i32* %11, align 4
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %373, i64 %375
  %377 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %376, i32 0, i32 2
  %378 = load i32, i32* %377, align 8
  %379 = load i32, i32* %12, align 4
  %380 = load i32, i32* %13, align 4
  %381 = add nsw i32 %379, %380
  %382 = call i32 @be_flash_redboot(%struct.be_adapter* %363, i32* %366, i64 %372, i32 %378, i32 %381)
  store i32 %382, i32* %17, align 4
  %383 = load i32, i32* %17, align 4
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %386, label %385

385:                                              ; preds = %362
  br label %457

386:                                              ; preds = %362
  br label %387

387:                                              ; preds = %386, %353
  %388 = load %struct.firmware*, %struct.firmware** %7, align 8
  %389 = getelementptr inbounds %struct.firmware, %struct.firmware* %388, i32 0, i32 1
  %390 = load i32*, i32** %389, align 8
  store i32* %390, i32** %14, align 8
  %391 = load i32, i32* %12, align 4
  %392 = sext i32 %391 to i64
  %393 = load %struct.flash_comp*, %struct.flash_comp** %15, align 8
  %394 = load i32, i32* %11, align 4
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %393, i64 %395
  %397 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %396, i32 0, i32 4
  %398 = load i64, i64* %397, align 8
  %399 = add nsw i64 %392, %398
  %400 = load i32, i32* %13, align 4
  %401 = sext i32 %400 to i64
  %402 = add nsw i64 %399, %401
  %403 = load i32*, i32** %14, align 8
  %404 = getelementptr inbounds i32, i32* %403, i64 %402
  store i32* %404, i32** %14, align 8
  %405 = load i32*, i32** %14, align 8
  %406 = load %struct.flash_comp*, %struct.flash_comp** %15, align 8
  %407 = load i32, i32* %11, align 4
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %406, i64 %408
  %410 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %409, i32 0, i32 2
  %411 = load i32, i32* %410, align 8
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds i32, i32* %405, i64 %412
  %414 = load %struct.firmware*, %struct.firmware** %7, align 8
  %415 = getelementptr inbounds %struct.firmware, %struct.firmware* %414, i32 0, i32 1
  %416 = load i32*, i32** %415, align 8
  %417 = load %struct.firmware*, %struct.firmware** %7, align 8
  %418 = getelementptr inbounds %struct.firmware, %struct.firmware* %417, i32 0, i32 0
  %419 = load i32, i32* %418, align 8
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds i32, i32* %416, i64 %420
  %422 = icmp ugt i32* %413, %421
  br i1 %422, label %423, label %424

423:                                              ; preds = %387
  store i32 -1, i32* %5, align 4
  br label %461

424:                                              ; preds = %387
  %425 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %426 = load i32*, i32** %14, align 8
  %427 = load %struct.be_dma_mem*, %struct.be_dma_mem** %8, align 8
  %428 = load %struct.flash_comp*, %struct.flash_comp** %15, align 8
  %429 = load i32, i32* %11, align 4
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %428, i64 %430
  %432 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %431, i32 0, i32 1
  %433 = load i64, i64* %432, align 8
  %434 = load %struct.flash_comp*, %struct.flash_comp** %15, align 8
  %435 = load i32, i32* %11, align 4
  %436 = sext i32 %435 to i64
  %437 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %434, i64 %436
  %438 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %437, i32 0, i32 2
  %439 = load i32, i32* %438, align 8
  %440 = call i32 @be_flash(%struct.be_adapter* %425, i32* %426, %struct.be_dma_mem* %427, i64 %433, i32 %439)
  store i32 %440, i32* %10, align 4
  %441 = load i32, i32* %10, align 4
  %442 = icmp ne i32 %441, 0
  br i1 %442, label %443, label %456

443:                                              ; preds = %424
  %444 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %445 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %444, i32 0, i32 0
  %446 = load %struct.TYPE_2__*, %struct.TYPE_2__** %445, align 8
  %447 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %446, i32 0, i32 0
  %448 = load %struct.flash_comp*, %struct.flash_comp** %15, align 8
  %449 = load i32, i32* %11, align 4
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %448, i64 %450
  %452 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %451, i32 0, i32 3
  %453 = load i32, i32* %452, align 4
  %454 = call i32 (i32*, i8*, ...) @dev_err(i32* %447, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %453)
  %455 = load i32, i32* %10, align 4
  store i32 %455, i32* %5, align 4
  br label %461

456:                                              ; preds = %424
  br label %457

457:                                              ; preds = %456, %385, %352, %338, %322
  %458 = load i32, i32* %11, align 4
  %459 = add nsw i32 %458, 1
  store i32 %459, i32* %11, align 4
  br label %307

460:                                              ; preds = %307
  store i32 0, i32* %5, align 4
  br label %461

461:                                              ; preds = %460, %443, %423, %300
  %462 = load i32, i32* %5, align 4
  ret i32 %462
}

declare dso_local i64 @BE3_chip(%struct.be_adapter*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.flash_comp*) #1

declare dso_local %struct.flash_section_info* @get_fsec_info(%struct.be_adapter*, i32, %struct.firmware*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @is_comp_in_ufi(%struct.be_adapter*, %struct.flash_section_info*, i32) #1

declare dso_local i64 @memcmp(i32, i8*, i32) #1

declare dso_local i32 @phy_flashing_required(%struct.be_adapter*) #1

declare dso_local i32 @be_flash_redboot(%struct.be_adapter*, i32*, i64, i32, i32) #1

declare dso_local i32 @be_flash(%struct.be_adapter*, i32*, %struct.be_dma_mem*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
