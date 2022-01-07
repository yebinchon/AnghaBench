; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_dbg.c_ql_get_dump.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_dbg.c_ql_get_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql_adapter = type { i32, i32 }

@QL_FRC_COREDUMP = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"coredump failed!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ql_get_dump(%struct.ql_adapter* %0, i8* %1) #0 {
  %3 = alloca %struct.ql_adapter*, align 8
  %4 = alloca i8*, align 8
  store %struct.ql_adapter* %0, %struct.ql_adapter** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i32, i32* @QL_FRC_COREDUMP, align 4
  %6 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %6, i32 0, i32 1
  %8 = call i32 @test_bit(i32 %5, i32* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %26, label %10

10:                                               ; preds = %2
  %11 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 @ql_core_dump(%struct.ql_adapter* %11, i8* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %10
  %16 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %17 = call i32 @ql_soft_reset_mpi_risc(%struct.ql_adapter* %16)
  br label %25

18:                                               ; preds = %10
  %19 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %20 = load i32, i32* @drv, align 4
  %21 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %22 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @netif_err(%struct.ql_adapter* %19, i32 %20, i32 %23, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %18, %15
  br label %32

26:                                               ; preds = %2
  %27 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = call i32 @ql_gen_reg_dump(%struct.ql_adapter* %27, i8* %28)
  %30 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %31 = call i32 @ql_get_core_dump(%struct.ql_adapter* %30)
  br label %32

32:                                               ; preds = %26, %25
  ret void
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @ql_core_dump(%struct.ql_adapter*, i8*) #1

declare dso_local i32 @ql_soft_reset_mpi_risc(%struct.ql_adapter*) #1

declare dso_local i32 @netif_err(%struct.ql_adapter*, i32, i32, i8*) #1

declare dso_local i32 @ql_gen_reg_dump(%struct.ql_adapter*, i8*) #1

declare dso_local i32 @ql_get_core_dump(%struct.ql_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
