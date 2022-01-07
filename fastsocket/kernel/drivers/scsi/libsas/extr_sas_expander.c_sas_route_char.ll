; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_expander.c_sas_route_char.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_expander.c_sas_route_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.domain_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ex_phy = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.domain_device*, %struct.ex_phy*)* @sas_route_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @sas_route_char(%struct.domain_device* %0, %struct.ex_phy* %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.domain_device*, align 8
  %5 = alloca %struct.ex_phy*, align 8
  store %struct.domain_device* %0, %struct.domain_device** %4, align 8
  store %struct.ex_phy* %1, %struct.ex_phy** %5, align 8
  %6 = load %struct.ex_phy*, %struct.ex_phy** %5, align 8
  %7 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %19 [
    i32 128, label %9
    i32 130, label %17
    i32 129, label %18
  ]

9:                                                ; preds = %2
  %10 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %11 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  store i8 85, i8* %3, align 1
  br label %20

16:                                               ; preds = %9
  store i8 84, i8* %3, align 1
  br label %20

17:                                               ; preds = %2
  store i8 68, i8* %3, align 1
  br label %20

18:                                               ; preds = %2
  store i8 83, i8* %3, align 1
  br label %20

19:                                               ; preds = %2
  store i8 63, i8* %3, align 1
  br label %20

20:                                               ; preds = %19, %18, %17, %16, %15
  %21 = load i8, i8* %3, align 1
  ret i8 %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
