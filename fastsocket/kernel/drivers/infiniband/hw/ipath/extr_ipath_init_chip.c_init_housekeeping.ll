; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_init_chip.c_init_housekeeping.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_init_chip.c_init_housekeeping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_devdata = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 (%struct.ipath_devdata*, i8*, i32)*, i32, i8*, %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }

@IPATH_LINKUNK = common dso_local global i32 0, align 4
@IPATH_PRESENT = common dso_local global i32 0, align 4
@IPATH_LINKACTIVE = common dso_local global i32 0, align 4
@IPATH_LINKARMED = common dso_local global i32 0, align 4
@IPATH_LINKDOWN = common dso_local global i32 0, align 4
@IPATH_LINKINIT = common dso_local global i32 0, align 4
@VERBOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Try to read spc chip revision\0A\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"ipath_kregbase %p, sendbase %x usrbase %x, cntrbase %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"Register read failures from chip, giving up initialization\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@INFINIPATH_E_RESET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"Revision %llx (PCI %x)\0A\00", align 1
@INFINIPATH_R_SOFTWARE_SHIFT = common dso_local global i32 0, align 4
@INFINIPATH_R_SOFTWARE_MASK = common dso_local global i32 0, align 4
@IPATH_CHIP_SWVERSION = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [69 x i8] c"Driver only handles version %d, chip swversion is %d (%llx), failng\0A\00", align 1
@ENOSYS = common dso_local global i32 0, align 4
@INFINIPATH_R_CHIPREVMAJOR_SHIFT = common dso_local global i32 0, align 4
@INFINIPATH_R_CHIPREVMAJOR_MASK = common dso_local global i32 0, align 4
@INFINIPATH_R_CHIPREVMINOR_SHIFT = common dso_local global i32 0, align 4
@INFINIPATH_R_CHIPREVMINOR_MASK = common dso_local global i32 0, align 4
@INFINIPATH_R_BOARDID_SHIFT = common dso_local global i32 0, align 4
@INFINIPATH_R_BOARDID_MASK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [61 x i8] c"ChipABI %u.%u, %s, InfiniPath%u %u.%u, PCI %u, SW Compat %u\0A\00", align 1
@IPATH_CHIP_VERS_MAJ = common dso_local global i32 0, align 4
@IPATH_CHIP_VERS_MIN = common dso_local global i32 0, align 4
@INFINIPATH_R_ARCH_SHIFT = common dso_local global i32 0, align 4
@INFINIPATH_R_ARCH_MASK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipath_devdata*, i32)* @init_housekeeping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_housekeeping(%struct.ipath_devdata* %0, i32 %1) #0 {
  %3 = alloca %struct.ipath_devdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [40 x i8], align 16
  %6 = alloca i32, align 4
  store %struct.ipath_devdata* %0, %struct.ipath_devdata** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %8 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %7, i32 0, i32 13
  store i64 0, i64* %8, align 8
  %9 = load i32, i32* @IPATH_LINKUNK, align 4
  %10 = load i32, i32* @IPATH_PRESENT, align 4
  %11 = or i32 %9, %10
  %12 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %13 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = or i32 %14, %11
  store i32 %15, i32* %13, align 8
  %16 = load i32, i32* @IPATH_LINKACTIVE, align 4
  %17 = load i32, i32* @IPATH_LINKARMED, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @IPATH_LINKDOWN, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @IPATH_LINKINIT, align 4
  %22 = or i32 %20, %21
  %23 = xor i32 %22, -1
  %24 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %25 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = and i32 %26, %23
  store i32 %27, i32* %25, align 8
  %28 = load i32, i32* @VERBOSE, align 4
  %29 = call i32 (i32, i8*, ...) @ipath_cdbg(i32 %28, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %31 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %32 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %31, i32 0, i32 11
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ipath_read_kreg64(%struct.ipath_devdata* %30, i32 %35)
  %37 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %38 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %40 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %41 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %40, i32 0, i32 11
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = call i8* @ipath_read_kreg32(%struct.ipath_devdata* %39, i32 %44)
  %46 = ptrtoint i8* %45 to i32
  %47 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %48 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 8
  %49 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %50 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %51 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %50, i32 0, i32 11
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = call i8* @ipath_read_kreg32(%struct.ipath_devdata* %49, i32 %54)
  %56 = ptrtoint i8* %55 to i32
  %57 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %58 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 4
  %59 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %60 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %61 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %60, i32 0, i32 11
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call i8* @ipath_read_kreg32(%struct.ipath_devdata* %59, i32 %64)
  %66 = ptrtoint i8* %65 to i32
  %67 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %68 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %67, i32 0, i32 4
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* @VERBOSE, align 4
  %70 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %71 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %70, i32 0, i32 12
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %74 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %77 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %80 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = call i32 (i32, i8*, ...) @ipath_cdbg(i32 %69, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %72, i32 %75, i32 %78, i32 %81)
  %83 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %84 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = icmp eq i32 %85, -1
  br i1 %86, label %102, label %87

87:                                               ; preds = %2
  %88 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %89 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = icmp eq i32 %90, -1
  br i1 %91, label %102, label %92

92:                                               ; preds = %87
  %93 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %94 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = icmp eq i32 %95, -1
  br i1 %96, label %102, label %97

97:                                               ; preds = %92
  %98 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %99 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 8
  %101 = icmp eq i32 %100, -1
  br i1 %101, label %102, label %113

102:                                              ; preds = %97, %92, %87, %2
  %103 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %104 = call i32 (%struct.ipath_devdata*, i8*, ...) @ipath_dev_err(%struct.ipath_devdata* %103, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0))
  %105 = load i32, i32* @IPATH_PRESENT, align 4
  %106 = xor i32 %105, -1
  %107 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %108 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = and i32 %109, %106
  store i32 %110, i32* %108, align 8
  %111 = load i32, i32* @ENODEV, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %6, align 4
  br label %253

113:                                              ; preds = %97
  %114 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %115 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %116 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %115, i32 0, i32 11
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @ipath_write_kreg(%struct.ipath_devdata* %114, i32 %119, i32 0)
  %121 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %122 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %123 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %122, i32 0, i32 11
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @INFINIPATH_E_RESET, align 4
  %128 = call i32 @ipath_write_kreg(%struct.ipath_devdata* %121, i32 %126, i32 %127)
  %129 = load i32, i32* @VERBOSE, align 4
  %130 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %131 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = sext i32 %132 to i64
  %134 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %135 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %134, i32 0, i32 5
  %136 = load i32, i32* %135, align 4
  %137 = call i32 (i32, i8*, ...) @ipath_cdbg(i32 %129, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i64 %133, i32 %136)
  %138 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %139 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @INFINIPATH_R_SOFTWARE_SHIFT, align 4
  %142 = ashr i32 %140, %141
  %143 = load i32, i32* @INFINIPATH_R_SOFTWARE_MASK, align 4
  %144 = and i32 %142, %143
  %145 = load i32, i32* @IPATH_CHIP_SWVERSION, align 4
  %146 = icmp ne i32 %144, %145
  br i1 %146, label %147, label %164

147:                                              ; preds = %113
  %148 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %149 = load i32, i32* @IPATH_CHIP_SWVERSION, align 4
  %150 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %151 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @INFINIPATH_R_SOFTWARE_SHIFT, align 4
  %154 = ashr i32 %152, %153
  %155 = load i32, i32* @INFINIPATH_R_SOFTWARE_MASK, align 4
  %156 = and i32 %154, %155
  %157 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %158 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = sext i32 %159 to i64
  %161 = call i32 (%struct.ipath_devdata*, i8*, ...) @ipath_dev_err(%struct.ipath_devdata* %148, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.4, i64 0, i64 0), i32 %149, i32 %156, i64 %160)
  %162 = load i32, i32* @ENOSYS, align 4
  %163 = sub nsw i32 0, %162
  store i32 %163, i32* %6, align 4
  br label %253

164:                                              ; preds = %113
  %165 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %166 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @INFINIPATH_R_CHIPREVMAJOR_SHIFT, align 4
  %169 = ashr i32 %167, %168
  %170 = load i32, i32* @INFINIPATH_R_CHIPREVMAJOR_MASK, align 4
  %171 = and i32 %169, %170
  %172 = sext i32 %171 to i64
  %173 = inttoptr i64 %172 to i8*
  %174 = ptrtoint i8* %173 to i32
  %175 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %176 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %175, i32 0, i32 6
  store i32 %174, i32* %176, align 8
  %177 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %178 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @INFINIPATH_R_CHIPREVMINOR_SHIFT, align 4
  %181 = ashr i32 %179, %180
  %182 = load i32, i32* @INFINIPATH_R_CHIPREVMINOR_MASK, align 4
  %183 = and i32 %181, %182
  %184 = sext i32 %183 to i64
  %185 = inttoptr i64 %184 to i8*
  %186 = ptrtoint i8* %185 to i32
  %187 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %188 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %187, i32 0, i32 7
  store i32 %186, i32* %188, align 4
  %189 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %190 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* @INFINIPATH_R_BOARDID_SHIFT, align 4
  %193 = ashr i32 %191, %192
  %194 = load i32, i32* @INFINIPATH_R_BOARDID_MASK, align 4
  %195 = and i32 %193, %194
  %196 = sext i32 %195 to i64
  %197 = inttoptr i64 %196 to i8*
  %198 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %199 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %198, i32 0, i32 10
  store i8* %197, i8** %199, align 8
  %200 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %201 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %200, i32 0, i32 8
  %202 = load i32 (%struct.ipath_devdata*, i8*, i32)*, i32 (%struct.ipath_devdata*, i8*, i32)** %201, align 8
  %203 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %204 = getelementptr inbounds [40 x i8], [40 x i8]* %5, i64 0, i64 0
  %205 = call i32 %202(%struct.ipath_devdata* %203, i8* %204, i32 40)
  store i32 %205, i32* %6, align 4
  %206 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %207 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %206, i32 0, i32 9
  %208 = load i32, i32* %207, align 8
  %209 = load i32, i32* @IPATH_CHIP_VERS_MAJ, align 4
  %210 = load i32, i32* @IPATH_CHIP_VERS_MIN, align 4
  %211 = getelementptr inbounds [40 x i8], [40 x i8]* %5, i64 0, i64 0
  %212 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %213 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* @INFINIPATH_R_ARCH_SHIFT, align 4
  %216 = ashr i32 %214, %215
  %217 = load i32, i32* @INFINIPATH_R_ARCH_MASK, align 4
  %218 = and i32 %216, %217
  %219 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %220 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %219, i32 0, i32 6
  %221 = load i32, i32* %220, align 8
  %222 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %223 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %222, i32 0, i32 7
  %224 = load i32, i32* %223, align 4
  %225 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %226 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %225, i32 0, i32 5
  %227 = load i32, i32* %226, align 4
  %228 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %229 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = load i32, i32* @INFINIPATH_R_SOFTWARE_SHIFT, align 4
  %232 = ashr i32 %230, %231
  %233 = load i32, i32* @INFINIPATH_R_SOFTWARE_MASK, align 4
  %234 = and i32 %232, %233
  %235 = call i32 @snprintf(i32 %208, i32 4, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.5, i64 0, i64 0), i32 %209, i32 %210, i8* %211, i32 %218, i32 %221, i32 %224, i32 %227, i32 %234)
  %236 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %237 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %236, i32 0, i32 9
  %238 = load i32, i32* %237, align 8
  %239 = call i32 @ipath_dbg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %238)
  %240 = load i32, i32* %6, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %243

242:                                              ; preds = %164
  br label %253

243:                                              ; preds = %164
  %244 = load i32, i32* %4, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %249

246:                                              ; preds = %243
  %247 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %248 = call i32 @init_chip_reset(%struct.ipath_devdata* %247)
  store i32 %248, i32* %6, align 4
  br label %252

249:                                              ; preds = %243
  %250 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %251 = call i32 @init_chip_first(%struct.ipath_devdata* %250)
  store i32 %251, i32* %6, align 4
  br label %252

252:                                              ; preds = %249, %246
  br label %253

253:                                              ; preds = %252, %242, %147, %102
  %254 = load i32, i32* %6, align 4
  ret i32 %254
}

declare dso_local i32 @ipath_cdbg(i32, i8*, ...) #1

declare dso_local i32 @ipath_read_kreg64(%struct.ipath_devdata*, i32) #1

declare dso_local i8* @ipath_read_kreg32(%struct.ipath_devdata*, i32) #1

declare dso_local i32 @ipath_dev_err(%struct.ipath_devdata*, i8*, ...) #1

declare dso_local i32 @ipath_write_kreg(%struct.ipath_devdata*, i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ipath_dbg(i8*, i32) #1

declare dso_local i32 @init_chip_reset(%struct.ipath_devdata*) #1

declare dso_local i32 @init_chip_first(%struct.ipath_devdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
