; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sp.c_bnx2x_func_get_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sp.c_bnx2x_func_get_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_func_sp_obj = type { i32, i64 }

@BNX2X_F_STATE_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2x_func_get_state(%struct.bnx2x* %0, %struct.bnx2x_func_sp_obj* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca %struct.bnx2x_func_sp_obj*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store %struct.bnx2x_func_sp_obj* %1, %struct.bnx2x_func_sp_obj** %5, align 8
  %6 = load %struct.bnx2x_func_sp_obj*, %struct.bnx2x_func_sp_obj** %5, align 8
  %7 = getelementptr inbounds %struct.bnx2x_func_sp_obj, %struct.bnx2x_func_sp_obj* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @BNX2X_F_STATE_MAX, align 4
  store i32 %11, i32* %3, align 4
  br label %17

12:                                               ; preds = %2
  %13 = call i32 (...) @rmb()
  %14 = load %struct.bnx2x_func_sp_obj*, %struct.bnx2x_func_sp_obj** %5, align 8
  %15 = getelementptr inbounds %struct.bnx2x_func_sp_obj, %struct.bnx2x_func_sp_obj* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %3, align 4
  br label %17

17:                                               ; preds = %12, %10
  %18 = load i32, i32* %3, align 4
  ret i32 %18
}

declare dso_local i32 @rmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
