; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_chk_pkt_rings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_chk_pkt_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_local = type { i64*, i64*, i64, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@CNIC_LCL_FL_RINGS_INITED = common dso_local global i32 0, align 4
@CNIC_LCL_FL_L2_WAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cnic_local*)* @cnic_chk_pkt_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cnic_chk_pkt_rings(%struct.cnic_local* %0) #0 {
  %2 = alloca %struct.cnic_local*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.cnic_local* %0, %struct.cnic_local** %2, align 8
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* @CNIC_LCL_FL_RINGS_INITED, align 4
  %7 = load %struct.cnic_local*, %struct.cnic_local** %2, align 8
  %8 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %7, i32 0, i32 4
  %9 = call i64 @test_bit(i32 %6, i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %67

12:                                               ; preds = %1
  %13 = load %struct.cnic_local*, %struct.cnic_local** %2, align 8
  %14 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %3, align 8
  %17 = load %struct.cnic_local*, %struct.cnic_local** %2, align 8
  %18 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %17, i32 0, i32 1
  %19 = load i64*, i64** %18, align 8
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %4, align 8
  %21 = load %struct.cnic_local*, %struct.cnic_local** %2, align 8
  %22 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %4, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %32, label %26

26:                                               ; preds = %12
  %27 = load %struct.cnic_local*, %struct.cnic_local** %2, align 8
  %28 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %3, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %59

32:                                               ; preds = %26, %12
  %33 = load i32, i32* @CNIC_LCL_FL_L2_WAIT, align 4
  %34 = load %struct.cnic_local*, %struct.cnic_local** %2, align 8
  %35 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %34, i32 0, i32 4
  %36 = call i64 @test_bit(i32 %33, i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load %struct.cnic_local*, %struct.cnic_local** %2, align 8
  %40 = call i32 @cnic_l2_completion(%struct.cnic_local* %39)
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %38, %32
  %42 = load i64, i64* %4, align 8
  %43 = load %struct.cnic_local*, %struct.cnic_local** %2, align 8
  %44 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %43, i32 0, i32 2
  store i64 %42, i64* %44, align 8
  %45 = load i64, i64* %3, align 8
  %46 = load %struct.cnic_local*, %struct.cnic_local** %2, align 8
  %47 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %46, i32 0, i32 3
  store i64 %45, i64* %47, align 8
  %48 = load %struct.cnic_local*, %struct.cnic_local** %2, align 8
  %49 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %48, i32 0, i32 5
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = icmp ne %struct.TYPE_2__* %50, null
  br i1 %51, label %52, label %58

52:                                               ; preds = %41
  %53 = load %struct.cnic_local*, %struct.cnic_local** %2, align 8
  %54 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %53, i32 0, i32 5
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = call i32 @uio_event_notify(i32* %56)
  br label %58

58:                                               ; preds = %52, %41
  br label %59

59:                                               ; preds = %58, %26
  %60 = load i32, i32* %5, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %59
  %63 = load i32, i32* @CNIC_LCL_FL_L2_WAIT, align 4
  %64 = load %struct.cnic_local*, %struct.cnic_local** %2, align 8
  %65 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %64, i32 0, i32 4
  %66 = call i32 @clear_bit(i32 %63, i32* %65)
  br label %67

67:                                               ; preds = %11, %62, %59
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @cnic_l2_completion(%struct.cnic_local*) #1

declare dso_local i32 @uio_event_notify(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
