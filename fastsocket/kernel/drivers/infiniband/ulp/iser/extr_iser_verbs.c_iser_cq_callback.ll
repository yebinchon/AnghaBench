; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/iser/extr_iser_verbs.c_iser_cq_callback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/iser/extr_iser_verbs.c_iser_cq_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cq = type { i32 }
%struct.iser_cq_desc = type { i32, %struct.iser_device* }
%struct.iser_device = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_cq*, i8*)* @iser_cq_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iser_cq_callback(%struct.ib_cq* %0, i8* %1) #0 {
  %3 = alloca %struct.ib_cq*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.iser_cq_desc*, align 8
  %6 = alloca %struct.iser_device*, align 8
  %7 = alloca i32, align 4
  store %struct.ib_cq* %0, %struct.ib_cq** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.iser_cq_desc*
  store %struct.iser_cq_desc* %9, %struct.iser_cq_desc** %5, align 8
  %10 = load %struct.iser_cq_desc*, %struct.iser_cq_desc** %5, align 8
  %11 = getelementptr inbounds %struct.iser_cq_desc, %struct.iser_cq_desc* %10, i32 0, i32 1
  %12 = load %struct.iser_device*, %struct.iser_device** %11, align 8
  store %struct.iser_device* %12, %struct.iser_device** %6, align 8
  %13 = load %struct.iser_cq_desc*, %struct.iser_cq_desc** %5, align 8
  %14 = getelementptr inbounds %struct.iser_cq_desc, %struct.iser_cq_desc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %7, align 4
  %16 = load %struct.iser_device*, %struct.iser_device** %6, align 8
  %17 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = call i32 @tasklet_schedule(i32* %21)
  ret void
}

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
