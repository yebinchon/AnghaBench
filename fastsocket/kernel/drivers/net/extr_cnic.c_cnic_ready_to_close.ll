; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_ready_to_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_ready_to_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_sock = type { i64, i32 }

@SK_F_OFFLD_COMPLETE = common dso_local global i32 0, align 4
@L4_KCQE_OPCODE_VALUE_RESET_RECEIVED = common dso_local global i64 0, align 8
@L4_KCQE_OPCODE_VALUE_CLOSE_COMP = common dso_local global i64 0, align 8
@L4_KCQE_OPCODE_VALUE_RESET_COMP = common dso_local global i64 0, align 8
@SK_F_CLOSING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cnic_sock*, i64)* @cnic_ready_to_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cnic_ready_to_close(%struct.cnic_sock* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cnic_sock*, align 8
  %5 = alloca i64, align 8
  store %struct.cnic_sock* %0, %struct.cnic_sock** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i32, i32* @SK_F_OFFLD_COMPLETE, align 4
  %7 = load %struct.cnic_sock*, %struct.cnic_sock** %4, align 8
  %8 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %7, i32 0, i32 1
  %9 = call i64 @test_and_clear_bit(i32 %6, i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load i64, i64* @L4_KCQE_OPCODE_VALUE_RESET_RECEIVED, align 8
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load %struct.cnic_sock*, %struct.cnic_sock** %4, align 8
  %15 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  br label %16

16:                                               ; preds = %11, %2
  %17 = load i64, i64* %5, align 8
  %18 = load %struct.cnic_sock*, %struct.cnic_sock** %4, align 8
  %19 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %17, %20
  br i1 %21, label %39, label %22

22:                                               ; preds = %16
  %23 = load %struct.cnic_sock*, %struct.cnic_sock** %4, align 8
  %24 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %39, label %27

27:                                               ; preds = %22
  %28 = load %struct.cnic_sock*, %struct.cnic_sock** %4, align 8
  %29 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @L4_KCQE_OPCODE_VALUE_CLOSE_COMP, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %39, label %33

33:                                               ; preds = %27
  %34 = load %struct.cnic_sock*, %struct.cnic_sock** %4, align 8
  %35 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @L4_KCQE_OPCODE_VALUE_RESET_COMP, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %56

39:                                               ; preds = %33, %27, %22, %16
  %40 = load i32, i32* @SK_F_CLOSING, align 4
  %41 = load %struct.cnic_sock*, %struct.cnic_sock** %4, align 8
  %42 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %41, i32 0, i32 1
  %43 = call i32 @test_and_set_bit(i32 %40, i32* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %55, label %45

45:                                               ; preds = %39
  %46 = load %struct.cnic_sock*, %struct.cnic_sock** %4, align 8
  %47 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load i64, i64* %5, align 8
  %52 = load %struct.cnic_sock*, %struct.cnic_sock** %4, align 8
  %53 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  br label %54

54:                                               ; preds = %50, %45
  store i32 1, i32* %3, align 4
  br label %57

55:                                               ; preds = %39
  br label %56

56:                                               ; preds = %55, %33
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %54
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
