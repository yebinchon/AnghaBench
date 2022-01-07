; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_ape_scratchpad_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_ape_scratchpad_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32 }

@APE_HAS_NCSI = common dso_local global i32 0, align 4
@TG3_APE_SEG_SIG = common dso_local global i64 0, align 8
@APE_SEG_SIG_MAGIC = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@TG3_APE_FW_STATUS = common dso_local global i64 0, align 8
@APE_FW_STATUS_READY = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@TG3_APE_SEG_MSG_BUF_OFF = common dso_local global i64 0, align 8
@TG3_APE_SHMEM_BASE = common dso_local global i64 0, align 8
@TG3_APE_SEG_MSG_BUF_LEN = common dso_local global i64 0, align 8
@APE_EVENT_STATUS_DRIVER_EVNT = common dso_local global i64 0, align 8
@APE_EVENT_STATUS_SCRTCHPD_READ = common dso_local global i64 0, align 8
@APE_EVENT_STATUS_EVENT_PENDING = common dso_local global i64 0, align 8
@TG3_APE_EVENT_STATUS = common dso_local global i64 0, align 8
@TG3_APE_LOCK_MEM = common dso_local global i32 0, align 4
@TG3_APE_EVENT = common dso_local global i64 0, align 8
@APE_EVENT_1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tg3*, i64*, i64, i64)* @tg3_ape_scratchpad_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tg3_ape_scratchpad_read(%struct.tg3* %0, i64* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tg3*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.tg3* %0, %struct.tg3** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %18 = load %struct.tg3*, %struct.tg3** %6, align 8
  %19 = load i32, i32* @APE_HAS_NCSI, align 4
  %20 = call i32 @tg3_flag(%struct.tg3* %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %144

23:                                               ; preds = %4
  %24 = load %struct.tg3*, %struct.tg3** %6, align 8
  %25 = load i64, i64* @TG3_APE_SEG_SIG, align 8
  %26 = call i64 @tg3_ape_read32(%struct.tg3* %24, i64 %25)
  store i64 %26, i64* %15, align 8
  %27 = load i64, i64* %15, align 8
  %28 = load i64, i64* @APE_SEG_SIG_MAGIC, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load i32, i32* @ENODEV, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %144

33:                                               ; preds = %23
  %34 = load %struct.tg3*, %struct.tg3** %6, align 8
  %35 = load i64, i64* @TG3_APE_FW_STATUS, align 8
  %36 = call i64 @tg3_ape_read32(%struct.tg3* %34, i64 %35)
  store i64 %36, i64* %15, align 8
  %37 = load i64, i64* %15, align 8
  %38 = load i64, i64* @APE_FW_STATUS_READY, align 8
  %39 = and i64 %37, %38
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %33
  %42 = load i32, i32* @EAGAIN, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %144

44:                                               ; preds = %33
  %45 = load %struct.tg3*, %struct.tg3** %6, align 8
  %46 = load i64, i64* @TG3_APE_SEG_MSG_BUF_OFF, align 8
  %47 = call i64 @tg3_ape_read32(%struct.tg3* %45, i64 %46)
  %48 = load i64, i64* @TG3_APE_SHMEM_BASE, align 8
  %49 = add nsw i64 %47, %48
  store i64 %49, i64* %12, align 8
  %50 = load i64, i64* %12, align 8
  %51 = add i64 %50, 16
  store i64 %51, i64* %13, align 8
  %52 = load %struct.tg3*, %struct.tg3** %6, align 8
  %53 = load i64, i64* @TG3_APE_SEG_MSG_BUF_LEN, align 8
  %54 = call i64 @tg3_ape_read32(%struct.tg3* %52, i64 %53)
  store i64 %54, i64* %14, align 8
  br label %55

55:                                               ; preds = %142, %44
  %56 = load i64, i64* %9, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %143

58:                                               ; preds = %55
  %59 = load i64, i64* %9, align 8
  %60 = load i64, i64* %14, align 8
  %61 = icmp sgt i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = load i64, i64* %14, align 8
  br label %66

64:                                               ; preds = %58
  %65 = load i64, i64* %9, align 8
  br label %66

66:                                               ; preds = %64, %62
  %67 = phi i64 [ %63, %62 ], [ %65, %64 ]
  store i64 %67, i64* %16, align 8
  %68 = load i64, i64* %16, align 8
  %69 = load i64, i64* %9, align 8
  %70 = sub nsw i64 %69, %68
  store i64 %70, i64* %9, align 8
  %71 = load %struct.tg3*, %struct.tg3** %6, align 8
  %72 = load i64, i64* @TG3_APE_FW_STATUS, align 8
  %73 = call i64 @tg3_ape_read32(%struct.tg3* %71, i64 %72)
  store i64 %73, i64* %15, align 8
  %74 = load i64, i64* %15, align 8
  %75 = load i64, i64* @APE_FW_STATUS_READY, align 8
  %76 = and i64 %74, %75
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %66
  %79 = load i32, i32* @EAGAIN, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %5, align 4
  br label %144

81:                                               ; preds = %66
  %82 = load %struct.tg3*, %struct.tg3** %6, align 8
  %83 = call i32 @tg3_ape_event_lock(%struct.tg3* %82, i32 1000)
  store i32 %83, i32* %10, align 4
  %84 = load i32, i32* %10, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %81
  %87 = load i32, i32* %10, align 4
  store i32 %87, i32* %5, align 4
  br label %144

88:                                               ; preds = %81
  %89 = load i64, i64* @APE_EVENT_STATUS_DRIVER_EVNT, align 8
  %90 = load i64, i64* @APE_EVENT_STATUS_SCRTCHPD_READ, align 8
  %91 = or i64 %89, %90
  %92 = load i64, i64* @APE_EVENT_STATUS_EVENT_PENDING, align 8
  %93 = or i64 %91, %92
  store i64 %93, i64* %15, align 8
  %94 = load %struct.tg3*, %struct.tg3** %6, align 8
  %95 = load i64, i64* @TG3_APE_EVENT_STATUS, align 8
  %96 = load i64, i64* %15, align 8
  %97 = call i32 @tg3_ape_write32(%struct.tg3* %94, i64 %95, i64 %96)
  %98 = load %struct.tg3*, %struct.tg3** %6, align 8
  %99 = load i64, i64* %12, align 8
  %100 = load i64, i64* %8, align 8
  %101 = call i32 @tg3_ape_write32(%struct.tg3* %98, i64 %99, i64 %100)
  %102 = load %struct.tg3*, %struct.tg3** %6, align 8
  %103 = load i64, i64* %12, align 8
  %104 = add i64 %103, 8
  %105 = load i64, i64* %16, align 8
  %106 = call i32 @tg3_ape_write32(%struct.tg3* %102, i64 %104, i64 %105)
  %107 = load %struct.tg3*, %struct.tg3** %6, align 8
  %108 = load i32, i32* @TG3_APE_LOCK_MEM, align 4
  %109 = call i32 @tg3_ape_unlock(%struct.tg3* %107, i32 %108)
  %110 = load %struct.tg3*, %struct.tg3** %6, align 8
  %111 = load i64, i64* @TG3_APE_EVENT, align 8
  %112 = load i64, i64* @APE_EVENT_1, align 8
  %113 = call i32 @tg3_ape_write32(%struct.tg3* %110, i64 %111, i64 %112)
  %114 = load i64, i64* %16, align 8
  %115 = load i64, i64* %8, align 8
  %116 = add nsw i64 %115, %114
  store i64 %116, i64* %8, align 8
  %117 = load %struct.tg3*, %struct.tg3** %6, align 8
  %118 = call i64 @tg3_ape_wait_for_event(%struct.tg3* %117, i32 30000)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %88
  %121 = load i32, i32* @EAGAIN, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %5, align 4
  br label %144

123:                                              ; preds = %88
  store i64 0, i64* %11, align 8
  br label %124

124:                                              ; preds = %137, %123
  %125 = load i64, i64* %16, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %142

127:                                              ; preds = %124
  %128 = load %struct.tg3*, %struct.tg3** %6, align 8
  %129 = load i64, i64* %13, align 8
  %130 = load i64, i64* %11, align 8
  %131 = add nsw i64 %129, %130
  %132 = call i64 @tg3_ape_read32(%struct.tg3* %128, i64 %131)
  store i64 %132, i64* %17, align 8
  %133 = load i64*, i64** %7, align 8
  %134 = call i32 @memcpy(i64* %133, i64* %17, i32 8)
  %135 = load i64*, i64** %7, align 8
  %136 = getelementptr inbounds i64, i64* %135, i32 1
  store i64* %136, i64** %7, align 8
  br label %137

137:                                              ; preds = %127
  %138 = load i64, i64* %11, align 8
  %139 = add nsw i64 %138, 4
  store i64 %139, i64* %11, align 8
  %140 = load i64, i64* %16, align 8
  %141 = sub nsw i64 %140, 4
  store i64 %141, i64* %16, align 8
  br label %124

142:                                              ; preds = %124
  br label %55

143:                                              ; preds = %55
  store i32 0, i32* %5, align 4
  br label %144

144:                                              ; preds = %143, %120, %86, %78, %41, %30, %22
  %145 = load i32, i32* %5, align 4
  ret i32 %145
}

declare dso_local i32 @tg3_flag(%struct.tg3*, i32) #1

declare dso_local i64 @tg3_ape_read32(%struct.tg3*, i64) #1

declare dso_local i32 @tg3_ape_event_lock(%struct.tg3*, i32) #1

declare dso_local i32 @tg3_ape_write32(%struct.tg3*, i64, i64) #1

declare dso_local i32 @tg3_ape_unlock(%struct.tg3*, i32) #1

declare dso_local i64 @tg3_ape_wait_for_event(%struct.tg3*, i32) #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
