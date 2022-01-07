; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tehuti.c___bdx_tx_db_ptr_next.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tehuti.c___bdx_tx_db_ptr_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.txdb = type { %struct.tx_map*, %struct.tx_map*, %struct.tx_map*, %struct.tx_map* }
%struct.tx_map = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.txdb*, %struct.tx_map**)* @__bdx_tx_db_ptr_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__bdx_tx_db_ptr_next(%struct.txdb* %0, %struct.tx_map** %1) #0 {
  %3 = alloca %struct.txdb*, align 8
  %4 = alloca %struct.tx_map**, align 8
  store %struct.txdb* %0, %struct.txdb** %3, align 8
  store %struct.tx_map** %1, %struct.tx_map*** %4, align 8
  %5 = load %struct.txdb*, %struct.txdb** %3, align 8
  %6 = icmp eq %struct.txdb* %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = load %struct.tx_map**, %struct.tx_map*** %4, align 8
  %9 = icmp eq %struct.tx_map** %8, null
  br label %10

10:                                               ; preds = %7, %2
  %11 = phi i1 [ true, %2 ], [ %9, %7 ]
  %12 = zext i1 %11 to i32
  %13 = call i32 @BDX_ASSERT(i32 %12)
  %14 = load %struct.tx_map**, %struct.tx_map*** %4, align 8
  %15 = load %struct.tx_map*, %struct.tx_map** %14, align 8
  %16 = load %struct.txdb*, %struct.txdb** %3, align 8
  %17 = getelementptr inbounds %struct.txdb, %struct.txdb* %16, i32 0, i32 3
  %18 = load %struct.tx_map*, %struct.tx_map** %17, align 8
  %19 = icmp ne %struct.tx_map* %15, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %10
  %21 = load %struct.tx_map**, %struct.tx_map*** %4, align 8
  %22 = load %struct.tx_map*, %struct.tx_map** %21, align 8
  %23 = load %struct.txdb*, %struct.txdb** %3, align 8
  %24 = getelementptr inbounds %struct.txdb, %struct.txdb* %23, i32 0, i32 2
  %25 = load %struct.tx_map*, %struct.tx_map** %24, align 8
  %26 = icmp ne %struct.tx_map* %22, %25
  br label %27

27:                                               ; preds = %20, %10
  %28 = phi i1 [ false, %10 ], [ %26, %20 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @BDX_ASSERT(i32 %29)
  %31 = load %struct.tx_map**, %struct.tx_map*** %4, align 8
  %32 = load %struct.tx_map*, %struct.tx_map** %31, align 8
  %33 = load %struct.txdb*, %struct.txdb** %3, align 8
  %34 = getelementptr inbounds %struct.txdb, %struct.txdb* %33, i32 0, i32 0
  %35 = load %struct.tx_map*, %struct.tx_map** %34, align 8
  %36 = icmp ult %struct.tx_map* %32, %35
  br i1 %36, label %44, label %37

37:                                               ; preds = %27
  %38 = load %struct.tx_map**, %struct.tx_map*** %4, align 8
  %39 = load %struct.tx_map*, %struct.tx_map** %38, align 8
  %40 = load %struct.txdb*, %struct.txdb** %3, align 8
  %41 = getelementptr inbounds %struct.txdb, %struct.txdb* %40, i32 0, i32 1
  %42 = load %struct.tx_map*, %struct.tx_map** %41, align 8
  %43 = icmp uge %struct.tx_map* %39, %42
  br label %44

44:                                               ; preds = %37, %27
  %45 = phi i1 [ true, %27 ], [ %43, %37 ]
  %46 = zext i1 %45 to i32
  %47 = call i32 @BDX_ASSERT(i32 %46)
  %48 = load %struct.tx_map**, %struct.tx_map*** %4, align 8
  %49 = load %struct.tx_map*, %struct.tx_map** %48, align 8
  %50 = getelementptr inbounds %struct.tx_map, %struct.tx_map* %49, i32 1
  store %struct.tx_map* %50, %struct.tx_map** %48, align 8
  %51 = load %struct.tx_map**, %struct.tx_map*** %4, align 8
  %52 = load %struct.tx_map*, %struct.tx_map** %51, align 8
  %53 = load %struct.txdb*, %struct.txdb** %3, align 8
  %54 = getelementptr inbounds %struct.txdb, %struct.txdb* %53, i32 0, i32 1
  %55 = load %struct.tx_map*, %struct.tx_map** %54, align 8
  %56 = icmp eq %struct.tx_map* %52, %55
  %57 = zext i1 %56 to i32
  %58 = call i64 @unlikely(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %44
  %61 = load %struct.txdb*, %struct.txdb** %3, align 8
  %62 = getelementptr inbounds %struct.txdb, %struct.txdb* %61, i32 0, i32 0
  %63 = load %struct.tx_map*, %struct.tx_map** %62, align 8
  %64 = load %struct.tx_map**, %struct.tx_map*** %4, align 8
  store %struct.tx_map* %63, %struct.tx_map** %64, align 8
  br label %65

65:                                               ; preds = %60, %44
  ret void
}

declare dso_local i32 @BDX_ASSERT(i32) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
