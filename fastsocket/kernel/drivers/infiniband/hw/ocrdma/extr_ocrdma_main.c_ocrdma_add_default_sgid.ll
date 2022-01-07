; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_main.c_ocrdma_add_default_sgid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_main.c_ocrdma_add_default_sgid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_dev = type { %union.ib_gid* }
%union.ib_gid = type { i32* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocrdma_dev*)* @ocrdma_add_default_sgid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocrdma_add_default_sgid(%struct.ocrdma_dev* %0) #0 {
  %2 = alloca %struct.ocrdma_dev*, align 8
  %3 = alloca %union.ib_gid*, align 8
  store %struct.ocrdma_dev* %0, %struct.ocrdma_dev** %2, align 8
  %4 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %2, align 8
  %5 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %4, i32 0, i32 0
  %6 = load %union.ib_gid*, %union.ib_gid** %5, align 8
  %7 = getelementptr inbounds %union.ib_gid, %union.ib_gid* %6, i64 0
  store %union.ib_gid* %7, %union.ib_gid** %3, align 8
  %8 = call i32 @cpu_to_be64(i32 0)
  %9 = load %union.ib_gid*, %union.ib_gid** %3, align 8
  %10 = bitcast %union.ib_gid* %9 to %struct.TYPE_2__*
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store i32 %8, i32* %11, align 8
  %12 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %2, align 8
  %13 = load %union.ib_gid*, %union.ib_gid** %3, align 8
  %14 = bitcast %union.ib_gid* %13 to i32**
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 8
  %17 = call i32 @ocrdma_get_guid(%struct.ocrdma_dev* %12, i32* %16)
  ret void
}

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @ocrdma_get_guid(%struct.ocrdma_dev*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
