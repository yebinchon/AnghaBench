; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_chip.c_hw_init_hmac.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_chip.c_hw_init_hmac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zd_ioreq32 = type { i32, i32 }
%struct.zd_chip = type { i32 }

@hw_init_hmac.ioreqs = internal constant [20 x %struct.zd_ioreq32] [%struct.zd_ioreq32 { i32 148, i32 32 }, %struct.zd_ioreq32 { i32 146, i32 805308424 }, %struct.zd_ioreq32 { i32 132, i32 0 }, %struct.zd_ioreq32 { i32 134, i32 128 }, %struct.zd_ioreq32 { i32 141, i32 0 }, %struct.zd_ioreq32 { i32 140, i32 -2147483648 }, %struct.zd_ioreq32 { i32 136, i32 164 }, %struct.zd_ioreq32 { i32 145, i32 127 }, %struct.zd_ioreq32 { i32 143, i32 15729665 }, %struct.zd_ioreq32 { i32 138, i32 0 }, %struct.zd_ioreq32 { i32 148, i32 128 }, %struct.zd_ioreq32 { i32 145, i32 0 }, %struct.zd_ioreq32 { i32 147, i32 256 }, %struct.zd_ioreq32 { i32 133, i32 112 }, %struct.zd_ioreq32 { i32 137, i32 268435456 }, %struct.zd_ioreq32 { i32 135, i32 33751555 }, %struct.zd_ioreq32 { i32 144, i32 1 }, %struct.zd_ioreq32 { i32 131, i32 276 }, %struct.zd_ioreq32 { i32 139, i32 130 }, %struct.zd_ioreq32 { i32 142, i32 129 }], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zd_chip*)* @hw_init_hmac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hw_init_hmac(%struct.zd_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zd_chip*, align 8
  %4 = alloca i32, align 4
  store %struct.zd_chip* %0, %struct.zd_chip** %3, align 8
  %5 = load %struct.zd_chip*, %struct.zd_chip** %3, align 8
  %6 = getelementptr inbounds %struct.zd_chip, %struct.zd_chip* %5, i32 0, i32 0
  %7 = call i32 @mutex_is_locked(i32* %6)
  %8 = call i32 @ZD_ASSERT(i32 %7)
  %9 = load %struct.zd_chip*, %struct.zd_chip** %3, align 8
  %10 = call i32 @ARRAY_SIZE(%struct.zd_ioreq32* getelementptr inbounds ([20 x %struct.zd_ioreq32], [20 x %struct.zd_ioreq32]* @hw_init_hmac.ioreqs, i64 0, i64 0))
  %11 = call i32 @zd_iowrite32a_locked(%struct.zd_chip* %9, %struct.zd_ioreq32* getelementptr inbounds ([20 x %struct.zd_ioreq32], [20 x %struct.zd_ioreq32]* @hw_init_hmac.ioreqs, i64 0, i64 0), i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  store i32 %15, i32* %2, align 4
  br label %28

16:                                               ; preds = %1
  %17 = load %struct.zd_chip*, %struct.zd_chip** %3, align 8
  %18 = call i64 @zd_chip_is_zd1211b(%struct.zd_chip* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load %struct.zd_chip*, %struct.zd_chip** %3, align 8
  %22 = call i32 @zd1211b_hw_init_hmac(%struct.zd_chip* %21)
  br label %26

23:                                               ; preds = %16
  %24 = load %struct.zd_chip*, %struct.zd_chip** %3, align 8
  %25 = call i32 @zd1211_hw_init_hmac(%struct.zd_chip* %24)
  br label %26

26:                                               ; preds = %23, %20
  %27 = phi i32 [ %22, %20 ], [ %25, %23 ]
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %26, %14
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @ZD_ASSERT(i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

declare dso_local i32 @zd_iowrite32a_locked(%struct.zd_chip*, %struct.zd_ioreq32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.zd_ioreq32*) #1

declare dso_local i64 @zd_chip_is_zd1211b(%struct.zd_chip*) #1

declare dso_local i32 @zd1211b_hw_init_hmac(%struct.zd_chip*) #1

declare dso_local i32 @zd1211_hw_init_hmac(%struct.zd_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
