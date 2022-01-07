; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_chip.c_zd1211_hw_init_hmac.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_chip.c_zd1211_hw_init_hmac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zd_ioreq32 = type { i32, i32 }
%struct.zd_chip = type { i32 }

@zd1211_hw_init_hmac.ioreqs = internal constant [2 x %struct.zd_ioreq32] [%struct.zd_ioreq32 { i32 129, i32 128 }, %struct.zd_ioreq32 { i32 130, i32 788032 }], align 16
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zd_chip*)* @zd1211_hw_init_hmac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zd1211_hw_init_hmac(%struct.zd_chip* %0) #0 {
  %2 = alloca %struct.zd_chip*, align 8
  store %struct.zd_chip* %0, %struct.zd_chip** %2, align 8
  %3 = load %struct.zd_chip*, %struct.zd_chip** %2, align 8
  %4 = call i32 @zd_chip_dev(%struct.zd_chip* %3)
  %5 = call i32 @dev_dbg_f(i32 %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.zd_chip*, %struct.zd_chip** %2, align 8
  %7 = getelementptr inbounds %struct.zd_chip, %struct.zd_chip* %6, i32 0, i32 0
  %8 = call i32 @mutex_is_locked(i32* %7)
  %9 = call i32 @ZD_ASSERT(i32 %8)
  %10 = load %struct.zd_chip*, %struct.zd_chip** %2, align 8
  %11 = call i32 @ARRAY_SIZE(%struct.zd_ioreq32* getelementptr inbounds ([2 x %struct.zd_ioreq32], [2 x %struct.zd_ioreq32]* @zd1211_hw_init_hmac.ioreqs, i64 0, i64 0))
  %12 = call i32 @zd_iowrite32a_locked(%struct.zd_chip* %10, %struct.zd_ioreq32* getelementptr inbounds ([2 x %struct.zd_ioreq32], [2 x %struct.zd_ioreq32]* @zd1211_hw_init_hmac.ioreqs, i64 0, i64 0), i32 %11)
  ret i32 %12
}

declare dso_local i32 @dev_dbg_f(i32, i8*) #1

declare dso_local i32 @zd_chip_dev(%struct.zd_chip*) #1

declare dso_local i32 @ZD_ASSERT(i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

declare dso_local i32 @zd_iowrite32a_locked(%struct.zd_chip*, %struct.zd_ioreq32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.zd_ioreq32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
