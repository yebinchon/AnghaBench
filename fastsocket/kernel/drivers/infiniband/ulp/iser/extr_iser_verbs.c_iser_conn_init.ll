; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/iser/extr_iser_verbs.c_iser_conn_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/iser/extr_iser_verbs.c_iser_conn_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iser_conn = type { i32, i32, i32, i32, i64, i32, i32 }

@ISER_CONN_INIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iser_conn_init(%struct.iser_conn* %0) #0 {
  %2 = alloca %struct.iser_conn*, align 8
  store %struct.iser_conn* %0, %struct.iser_conn** %2, align 8
  %3 = load i32, i32* @ISER_CONN_INIT, align 4
  %4 = load %struct.iser_conn*, %struct.iser_conn** %2, align 8
  %5 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %4, i32 0, i32 6
  store i32 %3, i32* %5, align 4
  %6 = load %struct.iser_conn*, %struct.iser_conn** %2, align 8
  %7 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %6, i32 0, i32 5
  %8 = call i32 @init_waitqueue_head(i32* %7)
  %9 = load %struct.iser_conn*, %struct.iser_conn** %2, align 8
  %10 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %9, i32 0, i32 4
  store i64 0, i64* %10, align 8
  %11 = load %struct.iser_conn*, %struct.iser_conn** %2, align 8
  %12 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %11, i32 0, i32 3
  %13 = call i32 @atomic_set(i32* %12, i32 0)
  %14 = load %struct.iser_conn*, %struct.iser_conn** %2, align 8
  %15 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %14, i32 0, i32 2
  %16 = call i32 @atomic_set(i32* %15, i32 1)
  %17 = load %struct.iser_conn*, %struct.iser_conn** %2, align 8
  %18 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %17, i32 0, i32 1
  %19 = call i32 @INIT_LIST_HEAD(i32* %18)
  %20 = load %struct.iser_conn*, %struct.iser_conn** %2, align 8
  %21 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %20, i32 0, i32 0
  %22 = call i32 @spin_lock_init(i32* %21)
  ret void
}

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
