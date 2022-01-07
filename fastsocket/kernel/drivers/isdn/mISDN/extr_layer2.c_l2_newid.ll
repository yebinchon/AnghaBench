; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/mISDN/extr_layer2.c_l2_newid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/mISDN/extr_layer2.c_l2_newid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.layer2 = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.layer2*)* @l2_newid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2_newid(%struct.layer2* %0) #0 {
  %2 = alloca %struct.layer2*, align 8
  %3 = alloca i32, align 4
  store %struct.layer2* %0, %struct.layer2** %2, align 8
  %4 = load %struct.layer2*, %struct.layer2** %2, align 8
  %5 = getelementptr inbounds %struct.layer2, %struct.layer2* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = add nsw i32 %6, 1
  store i32 %7, i32* %5, align 4
  store i32 %6, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp eq i32 %8, 32767
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.layer2*, %struct.layer2** %2, align 8
  %12 = getelementptr inbounds %struct.layer2, %struct.layer2* %11, i32 0, i32 0
  store i32 1, i32* %12, align 4
  br label %13

13:                                               ; preds = %10, %1
  %14 = load i32, i32* %3, align 4
  %15 = shl i32 %14, 16
  store i32 %15, i32* %3, align 4
  %16 = load %struct.layer2*, %struct.layer2** %2, align 8
  %17 = getelementptr inbounds %struct.layer2, %struct.layer2* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = shl i32 %18, 8
  %20 = load i32, i32* %3, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %3, align 4
  %22 = load %struct.layer2*, %struct.layer2** %2, align 8
  %23 = getelementptr inbounds %struct.layer2, %struct.layer2* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %3, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
