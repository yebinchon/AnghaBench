; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_cm_upcall.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_cm_upcall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_local = type { i32* }
%struct.cnic_sock = type { i32 }
%struct.cnic_ulp_ops = type { i32 (%struct.cnic_sock.0*)*, i32 (%struct.cnic_sock.1*)*, i32 (%struct.cnic_sock.2*)*, i32 (%struct.cnic_sock.3*)*, i32 (%struct.cnic_sock.4*)* }
%struct.cnic_sock.0 = type opaque
%struct.cnic_sock.1 = type opaque
%struct.cnic_sock.2 = type opaque
%struct.cnic_sock.3 = type opaque
%struct.cnic_sock.4 = type opaque

@L4_KCQE_OPCODE_VALUE_CONNECT_COMPLETE = common dso_local global i64 0, align 8
@L4_KCQE_OPCODE_VALUE_CLOSE_COMP = common dso_local global i64 0, align 8
@L4_KCQE_OPCODE_VALUE_RESET_RECEIVED = common dso_local global i64 0, align 8
@L4_KCQE_OPCODE_VALUE_RESET_COMP = common dso_local global i64 0, align 8
@L4_KCQE_OPCODE_VALUE_CLOSE_RECEIVED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cnic_local*, %struct.cnic_sock*, i64)* @cnic_cm_upcall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cnic_cm_upcall(%struct.cnic_local* %0, %struct.cnic_sock* %1, i64 %2) #0 {
  %4 = alloca %struct.cnic_local*, align 8
  %5 = alloca %struct.cnic_sock*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.cnic_ulp_ops*, align 8
  %8 = alloca i32, align 4
  store %struct.cnic_local* %0, %struct.cnic_local** %4, align 8
  store %struct.cnic_sock* %1, %struct.cnic_sock** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.cnic_sock*, %struct.cnic_sock** %5, align 8
  %10 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %8, align 4
  %12 = call i32 (...) @rcu_read_lock()
  %13 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %14 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.cnic_ulp_ops* @rcu_dereference(i32 %19)
  store %struct.cnic_ulp_ops* %20, %struct.cnic_ulp_ops** %7, align 8
  %21 = load %struct.cnic_ulp_ops*, %struct.cnic_ulp_ops** %7, align 8
  %22 = icmp ne %struct.cnic_ulp_ops* %21, null
  br i1 %22, label %23, label %83

23:                                               ; preds = %3
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* @L4_KCQE_OPCODE_VALUE_CONNECT_COMPLETE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %23
  %28 = load %struct.cnic_ulp_ops*, %struct.cnic_ulp_ops** %7, align 8
  %29 = getelementptr inbounds %struct.cnic_ulp_ops, %struct.cnic_ulp_ops* %28, i32 0, i32 4
  %30 = load i32 (%struct.cnic_sock.4*)*, i32 (%struct.cnic_sock.4*)** %29, align 8
  %31 = load %struct.cnic_sock*, %struct.cnic_sock** %5, align 8
  %32 = bitcast %struct.cnic_sock* %31 to %struct.cnic_sock.4*
  %33 = call i32 %30(%struct.cnic_sock.4* %32)
  br label %82

34:                                               ; preds = %23
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* @L4_KCQE_OPCODE_VALUE_CLOSE_COMP, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %34
  %39 = load %struct.cnic_ulp_ops*, %struct.cnic_ulp_ops** %7, align 8
  %40 = getelementptr inbounds %struct.cnic_ulp_ops, %struct.cnic_ulp_ops* %39, i32 0, i32 3
  %41 = load i32 (%struct.cnic_sock.3*)*, i32 (%struct.cnic_sock.3*)** %40, align 8
  %42 = load %struct.cnic_sock*, %struct.cnic_sock** %5, align 8
  %43 = bitcast %struct.cnic_sock* %42 to %struct.cnic_sock.3*
  %44 = call i32 %41(%struct.cnic_sock.3* %43)
  br label %81

45:                                               ; preds = %34
  %46 = load i64, i64* %6, align 8
  %47 = load i64, i64* @L4_KCQE_OPCODE_VALUE_RESET_RECEIVED, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %45
  %50 = load %struct.cnic_ulp_ops*, %struct.cnic_ulp_ops** %7, align 8
  %51 = getelementptr inbounds %struct.cnic_ulp_ops, %struct.cnic_ulp_ops* %50, i32 0, i32 2
  %52 = load i32 (%struct.cnic_sock.2*)*, i32 (%struct.cnic_sock.2*)** %51, align 8
  %53 = load %struct.cnic_sock*, %struct.cnic_sock** %5, align 8
  %54 = bitcast %struct.cnic_sock* %53 to %struct.cnic_sock.2*
  %55 = call i32 %52(%struct.cnic_sock.2* %54)
  br label %80

56:                                               ; preds = %45
  %57 = load i64, i64* %6, align 8
  %58 = load i64, i64* @L4_KCQE_OPCODE_VALUE_RESET_COMP, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %56
  %61 = load %struct.cnic_ulp_ops*, %struct.cnic_ulp_ops** %7, align 8
  %62 = getelementptr inbounds %struct.cnic_ulp_ops, %struct.cnic_ulp_ops* %61, i32 0, i32 1
  %63 = load i32 (%struct.cnic_sock.1*)*, i32 (%struct.cnic_sock.1*)** %62, align 8
  %64 = load %struct.cnic_sock*, %struct.cnic_sock** %5, align 8
  %65 = bitcast %struct.cnic_sock* %64 to %struct.cnic_sock.1*
  %66 = call i32 %63(%struct.cnic_sock.1* %65)
  br label %79

67:                                               ; preds = %56
  %68 = load i64, i64* %6, align 8
  %69 = load i64, i64* @L4_KCQE_OPCODE_VALUE_CLOSE_RECEIVED, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %67
  %72 = load %struct.cnic_ulp_ops*, %struct.cnic_ulp_ops** %7, align 8
  %73 = getelementptr inbounds %struct.cnic_ulp_ops, %struct.cnic_ulp_ops* %72, i32 0, i32 0
  %74 = load i32 (%struct.cnic_sock.0*)*, i32 (%struct.cnic_sock.0*)** %73, align 8
  %75 = load %struct.cnic_sock*, %struct.cnic_sock** %5, align 8
  %76 = bitcast %struct.cnic_sock* %75 to %struct.cnic_sock.0*
  %77 = call i32 %74(%struct.cnic_sock.0* %76)
  br label %78

78:                                               ; preds = %71, %67
  br label %79

79:                                               ; preds = %78, %60
  br label %80

80:                                               ; preds = %79, %49
  br label %81

81:                                               ; preds = %80, %38
  br label %82

82:                                               ; preds = %81, %27
  br label %83

83:                                               ; preds = %82, %3
  %84 = call i32 (...) @rcu_read_unlock()
  ret void
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.cnic_ulp_ops* @rcu_dereference(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
