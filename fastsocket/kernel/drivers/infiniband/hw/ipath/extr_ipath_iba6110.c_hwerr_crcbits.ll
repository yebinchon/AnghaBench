; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_iba6110.c_hwerr_crcbits.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_iba6110.c_hwerr_crcbits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_devdata = type { i32, i32, %struct.TYPE_3__*, %struct.TYPE_4__*, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@_IPATH_HTLINK0_CRCBITS = common dso_local global i32 0, align 4
@_IPATH_HTLINK1_CRCBITS = common dso_local global i32 0, align 4
@IPATH_8BIT_IN_HT0 = common dso_local global i32 0, align 4
@infinipath_hwe_htclnkabyte1crcerr = common dso_local global i32 0, align 4
@IPATH_8BIT_IN_HT1 = common dso_local global i32 0, align 4
@infinipath_hwe_htclnkbbyte1crcerr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"[HT%s lane %s CRC (%llx); powercycle to completely clear]\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"0 (A)\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"1 (B)\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"0+1 (A+B)\00", align 1
@_IPATH_HTLANE1_CRCBITS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@_IPATH_HTLANE0_CRCBITS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"0+1\00", align 1
@.str.7 = private unnamed_addr constant [55 x i8] c"Couldn't read linkctrl0 of slave/primary config block\0A\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"HT linkctrl0 0x%x%s%s\0A\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c" CRC\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"linkfail\00", align 1
@.str.12 = private unnamed_addr constant [55 x i8] c"Couldn't read linkctrl1 of slave/primary config block\0A\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"HT linkctrl1 0x%x%s%s\0A\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"HT crc errs: %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [43 x i8] c"ignoring HT crc errors 0x%llx, not in use\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipath_devdata*, i32, i8*, i64)* @hwerr_crcbits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hwerr_crcbits(%struct.ipath_devdata* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.ipath_devdata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca [64 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ipath_devdata* %0, %struct.ipath_devdata** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @_IPATH_HTLINK0_CRCBITS, align 4
  %15 = load i32, i32* @_IPATH_HTLINK1_CRCBITS, align 4
  %16 = or i32 %14, %15
  %17 = and i32 %13, %16
  store i32 %17, i32* %10, align 4
  %18 = load %struct.ipath_devdata*, %struct.ipath_devdata** %5, align 8
  %19 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @IPATH_8BIT_IN_HT0, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %4
  %25 = load i32, i32* @infinipath_hwe_htclnkabyte1crcerr, align 4
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %10, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %10, align 4
  br label %29

29:                                               ; preds = %24, %4
  %30 = load %struct.ipath_devdata*, %struct.ipath_devdata** %5, align 8
  %31 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @IPATH_8BIT_IN_HT1, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %29
  %37 = load i32, i32* @infinipath_hwe_htclnkbbyte1crcerr, align 4
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %10, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %10, align 4
  br label %41

41:                                               ; preds = %36, %29
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %173

44:                                               ; preds = %41
  %45 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @_IPATH_HTLINK1_CRCBITS, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %44
  br label %59

51:                                               ; preds = %44
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* @_IPATH_HTLINK0_CRCBITS, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0)
  br label %59

59:                                               ; preds = %51, %50
  %60 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), %50 ], [ %58, %51 ]
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* @_IPATH_HTLANE1_CRCBITS, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %59
  br label %74

66:                                               ; preds = %59
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* @_IPATH_HTLANE0_CRCBITS, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)
  br label %74

74:                                               ; preds = %66, %65
  %75 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), %65 ], [ %73, %66 ]
  %76 = load i32, i32* %10, align 4
  %77 = sext i32 %76 to i64
  %78 = call i32 @snprintf(i8* %45, i32 64, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i8* %60, i8* %75, i64 %77)
  %79 = load i8*, i8** %7, align 8
  %80 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %81 = load i64, i64* %8, align 8
  %82 = call i32 @strlcat(i8* %79, i8* %80, i64 %81)
  %83 = load %struct.ipath_devdata*, %struct.ipath_devdata** %5, align 8
  %84 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %83, i32 0, i32 3
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = load %struct.ipath_devdata*, %struct.ipath_devdata** %5, align 8
  %87 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %86, i32 0, i32 4
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 %88, 4
  %90 = call i64 @pci_read_config_word(%struct.TYPE_4__* %85, i64 %89, i32* %11)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %74
  %93 = load %struct.ipath_devdata*, %struct.ipath_devdata** %5, align 8
  %94 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %93, i32 0, i32 3
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = call i32 @dev_info(i32* %96, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.7, i64 0, i64 0))
  br label %118

98:                                               ; preds = %74
  %99 = load i32, i32* %11, align 4
  %100 = and i32 %99, 64
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %117, label %102

102:                                              ; preds = %98
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* %11, align 4
  %105 = ashr i32 %104, 8
  %106 = and i32 %105, 7
  %107 = icmp ne i32 %106, 0
  %108 = zext i1 %107 to i64
  %109 = select i1 %107, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0)
  %110 = load i32, i32* %11, align 4
  %111 = ashr i32 %110, 4
  %112 = and i32 %111, 1
  %113 = icmp ne i32 %112, 0
  %114 = zext i1 %113 to i64
  %115 = select i1 %113, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0)
  %116 = call i32 (i8*, ...) @ipath_dbg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i32 %103, i8* %109, i8* %115)
  br label %117

117:                                              ; preds = %102, %98
  br label %118

118:                                              ; preds = %117, %92
  %119 = load %struct.ipath_devdata*, %struct.ipath_devdata** %5, align 8
  %120 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %119, i32 0, i32 3
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = load %struct.ipath_devdata*, %struct.ipath_devdata** %5, align 8
  %123 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %122, i32 0, i32 4
  %124 = load i64, i64* %123, align 8
  %125 = add nsw i64 %124, 8
  %126 = call i64 @pci_read_config_word(%struct.TYPE_4__* %121, i64 %125, i32* %12)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %118
  %129 = load %struct.ipath_devdata*, %struct.ipath_devdata** %5, align 8
  %130 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %129, i32 0, i32 3
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = call i32 @dev_info(i32* %132, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.12, i64 0, i64 0))
  br label %154

134:                                              ; preds = %118
  %135 = load i32, i32* %12, align 4
  %136 = and i32 %135, 64
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %153, label %138

138:                                              ; preds = %134
  %139 = load i32, i32* %12, align 4
  %140 = load i32, i32* %12, align 4
  %141 = ashr i32 %140, 8
  %142 = and i32 %141, 7
  %143 = icmp ne i32 %142, 0
  %144 = zext i1 %143 to i64
  %145 = select i1 %143, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0)
  %146 = load i32, i32* %12, align 4
  %147 = ashr i32 %146, 4
  %148 = and i32 %147, 1
  %149 = icmp ne i32 %148, 0
  %150 = zext i1 %149 to i64
  %151 = select i1 %149, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0)
  %152 = call i32 (i8*, ...) @ipath_dbg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0), i32 %139, i8* %145, i8* %151)
  br label %153

153:                                              ; preds = %138, %134
  br label %154

154:                                              ; preds = %153, %128
  %155 = load i32, i32* %10, align 4
  %156 = xor i32 %155, -1
  %157 = load %struct.ipath_devdata*, %struct.ipath_devdata** %5, align 8
  %158 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = and i32 %159, %156
  store i32 %160, i32* %158, align 4
  %161 = load %struct.ipath_devdata*, %struct.ipath_devdata** %5, align 8
  %162 = load %struct.ipath_devdata*, %struct.ipath_devdata** %5, align 8
  %163 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %162, i32 0, i32 2
  %164 = load %struct.TYPE_3__*, %struct.TYPE_3__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.ipath_devdata*, %struct.ipath_devdata** %5, align 8
  %168 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @ipath_write_kreg(%struct.ipath_devdata* %161, i32 %166, i32 %169)
  %171 = load i8*, i8** %7, align 8
  %172 = call i32 (i8*, ...) @ipath_dbg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i8* %171)
  br label %181

173:                                              ; preds = %41
  %174 = load i32, i32* %6, align 4
  %175 = load i32, i32* @_IPATH_HTLINK0_CRCBITS, align 4
  %176 = load i32, i32* @_IPATH_HTLINK1_CRCBITS, align 4
  %177 = or i32 %175, %176
  %178 = and i32 %174, %177
  %179 = sext i32 %178 to i64
  %180 = call i32 (i8*, ...) @ipath_dbg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.15, i64 0, i64 0), i64 %179)
  br label %181

181:                                              ; preds = %173, %154
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*, i64) #1

declare dso_local i32 @strlcat(i8*, i8*, i64) #1

declare dso_local i64 @pci_read_config_word(%struct.TYPE_4__*, i64, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @ipath_dbg(i8*, ...) #1

declare dso_local i32 @ipath_write_kreg(%struct.ipath_devdata*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
