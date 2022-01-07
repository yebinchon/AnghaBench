; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/rsxx/extr_config.c_rsxx_load_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/rsxx/extr_config.c_rsxx_load_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsxx_cardinfo = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_12__ }
%struct.TYPE_10__ = type { i64, i64, i64, i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i64, i64 }
%struct.TYPE_12__ = type { i64, i64 }

@CREG_ADD_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed reading card config.\0A\00", align 1
@RSXX_CFG_VERSION = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"Config corruption detected!\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"CRC (sb x%08x is x%08x)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"Invalid config version %d.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"Initializing card configuration.\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"version:     x%08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"crc:         x%08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"block_size:  x%08x\0A\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"stripe_size: x%08x\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"vendor_id:   x%08x\0A\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"cache_order: x%08x\0A\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"mode:        x%08x\0A\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"count:       x%08x\0A\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"latency:     x%08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rsxx_load_config(%struct.rsxx_cardinfo* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rsxx_cardinfo*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.rsxx_cardinfo* %0, %struct.rsxx_cardinfo** %3, align 8
  %6 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %7 = load i32, i32* @CREG_ADD_CONFIG, align 4
  %8 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %9 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %8, i32 0, i32 1
  %10 = call i32 @rsxx_creg_read(%struct.rsxx_cardinfo* %6, i32 %7, i32 72, %struct.TYPE_11__* %9, i32 1)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %15 = call i32 @CARD_TO_DEV(%struct.rsxx_cardinfo* %14)
  %16 = call i32 (i32, i8*, ...) @dev_err(i32 %15, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %2, align 4
  br label %174

18:                                               ; preds = %1
  %19 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %20 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 1
  %22 = call i32 @config_hdr_be_to_cpu(%struct.TYPE_12__* %21)
  %23 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %24 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @RSXX_CFG_VERSION, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %63

30:                                               ; preds = %18
  %31 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %32 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %31, i32 0, i32 1
  %33 = call i32 @config_data_swab(%struct.TYPE_11__* %32)
  %34 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %35 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %34, i32 0, i32 1
  %36 = call i64 @config_data_crc32(%struct.TYPE_11__* %35)
  store i64 %36, i64* %5, align 8
  %37 = load i64, i64* %5, align 8
  %38 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %39 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %37, %42
  br i1 %43, label %44, label %59

44:                                               ; preds = %30
  %45 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %46 = call i32 @CARD_TO_DEV(%struct.rsxx_cardinfo* %45)
  %47 = call i32 (i32, i8*, ...) @dev_err(i32 %46, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %48 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %49 = call i32 @CARD_TO_DEV(%struct.rsxx_cardinfo* %48)
  %50 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %51 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %5, align 8
  %56 = call i32 (i32, i8*, ...) @dev_info(i32 %49, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i64 %54, i64 %55)
  %57 = load i32, i32* @EIO, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %2, align 4
  br label %174

59:                                               ; preds = %30
  %60 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %61 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %60, i32 0, i32 1
  %62 = call i32 @config_data_le_to_cpu(%struct.TYPE_11__* %61)
  br label %96

63:                                               ; preds = %18
  %64 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %65 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %63
  %71 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %72 = call i32 @CARD_TO_DEV(%struct.rsxx_cardinfo* %71)
  %73 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %74 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = call i32 (i32, i8*, ...) @dev_err(i32 %72, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i64 %77)
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %2, align 4
  br label %174

81:                                               ; preds = %63
  %82 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %83 = call i32 @CARD_TO_DEV(%struct.rsxx_cardinfo* %82)
  %84 = call i32 (i32, i8*, ...) @dev_info(i32 %83, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %85 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %86 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %85, i32 0, i32 1
  %87 = call i32 @initialize_config(%struct.TYPE_11__* %86)
  %88 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %89 = call i32 @rsxx_save_config(%struct.rsxx_cardinfo* %88)
  store i32 %89, i32* %4, align 4
  %90 = load i32, i32* %4, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %81
  %93 = load i32, i32* %4, align 4
  store i32 %93, i32* %2, align 4
  br label %174

94:                                               ; preds = %81
  br label %95

95:                                               ; preds = %94
  br label %96

96:                                               ; preds = %95, %59
  %97 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %98 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %97, i32 0, i32 0
  store i32 1, i32* %98, align 8
  %99 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %100 = call i32 @CARD_TO_DEV(%struct.rsxx_cardinfo* %99)
  %101 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %102 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = call i32 @dev_dbg(i32 %100, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i64 %105)
  %107 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %108 = call i32 @CARD_TO_DEV(%struct.rsxx_cardinfo* %107)
  %109 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %110 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = call i32 @dev_dbg(i32 %108, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i64 %113)
  %115 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %116 = call i32 @CARD_TO_DEV(%struct.rsxx_cardinfo* %115)
  %117 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %118 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = call i32 @dev_dbg(i32 %116, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i64 %121)
  %123 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %124 = call i32 @CARD_TO_DEV(%struct.rsxx_cardinfo* %123)
  %125 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %126 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = call i32 @dev_dbg(i32 %124, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i64 %129)
  %131 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %132 = call i32 @CARD_TO_DEV(%struct.rsxx_cardinfo* %131)
  %133 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %134 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = call i32 @dev_dbg(i32 %132, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i64 %137)
  %139 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %140 = call i32 @CARD_TO_DEV(%struct.rsxx_cardinfo* %139)
  %141 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %142 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 3
  %145 = load i64, i64* %144, align 8
  %146 = call i32 @dev_dbg(i32 %140, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i64 %145)
  %147 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %148 = call i32 @CARD_TO_DEV(%struct.rsxx_cardinfo* %147)
  %149 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %150 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 4
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = call i32 @dev_dbg(i32 %148, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i64 %154)
  %156 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %157 = call i32 @CARD_TO_DEV(%struct.rsxx_cardinfo* %156)
  %158 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %159 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 4
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = call i32 @dev_dbg(i32 %157, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0), i64 %163)
  %165 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %166 = call i32 @CARD_TO_DEV(%struct.rsxx_cardinfo* %165)
  %167 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %168 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 4
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 2
  %172 = load i64, i64* %171, align 8
  %173 = call i32 @dev_dbg(i32 %166, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i64 %172)
  store i32 0, i32* %2, align 4
  br label %174

174:                                              ; preds = %96, %92, %70, %44, %13
  %175 = load i32, i32* %2, align 4
  ret i32 %175
}

declare dso_local i32 @rsxx_creg_read(%struct.rsxx_cardinfo*, i32, i32, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @CARD_TO_DEV(%struct.rsxx_cardinfo*) #1

declare dso_local i32 @config_hdr_be_to_cpu(%struct.TYPE_12__*) #1

declare dso_local i32 @config_data_swab(%struct.TYPE_11__*) #1

declare dso_local i64 @config_data_crc32(%struct.TYPE_11__*) #1

declare dso_local i32 @dev_info(i32, i8*, ...) #1

declare dso_local i32 @config_data_le_to_cpu(%struct.TYPE_11__*) #1

declare dso_local i32 @initialize_config(%struct.TYPE_11__*) #1

declare dso_local i32 @rsxx_save_config(%struct.rsxx_cardinfo*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
