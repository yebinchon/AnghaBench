; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/common/extr_uengine.c_ixp2000_uengine_load.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/common/extr_uengine.c_ixp2000_uengine_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixp2000_uengine_code = type { i32, i32, i32 }

@ixp2000_uengine_mask = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixp2000_uengine_load(i32 %0, %struct.ixp2000_uengine_code* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.ixp2000_uengine_code*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.ixp2000_uengine_code* %1, %struct.ixp2000_uengine_code** %5, align 8
  %7 = load %struct.ixp2000_uengine_code*, %struct.ixp2000_uengine_code** %5, align 8
  %8 = call i32 @check_ixp_type(%struct.ixp2000_uengine_code* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %52

11:                                               ; preds = %2
  %12 = load i32, i32* @ixp2000_uengine_mask, align 4
  %13 = load i32, i32* %4, align 4
  %14 = shl i32 1, %13
  %15 = and i32 %12, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  store i32 1, i32* %3, align 4
  br label %52

18:                                               ; preds = %11
  %19 = load i32, i32* %4, align 4
  %20 = shl i32 1, %19
  %21 = call i32 @ixp2000_uengine_reset(i32 %20)
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.ixp2000_uengine_code*, %struct.ixp2000_uengine_code** %5, align 8
  %24 = getelementptr inbounds %struct.ixp2000_uengine_code, %struct.ixp2000_uengine_code* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ixp2000_uengine_set_mode(i32 %22, i32 %25)
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.ixp2000_uengine_code*, %struct.ixp2000_uengine_code** %5, align 8
  %29 = call i64 @set_initial_registers(i32 %27, %struct.ixp2000_uengine_code* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %18
  store i32 1, i32* %3, align 4
  br label %52

32:                                               ; preds = %18
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.ixp2000_uengine_code*, %struct.ixp2000_uengine_code** %5, align 8
  %35 = getelementptr inbounds %struct.ixp2000_uengine_code, %struct.ixp2000_uengine_code* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ixp2000_uengine_code*, %struct.ixp2000_uengine_code** %5, align 8
  %38 = getelementptr inbounds %struct.ixp2000_uengine_code, %struct.ixp2000_uengine_code* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @ixp2000_uengine_load_microcode(i32 %33, i32 %36, i32 %39)
  store i32 0, i32* %6, align 4
  br label %41

41:                                               ; preds = %48, %32
  %42 = load i32, i32* %6, align 4
  %43 = icmp slt i32 %42, 8
  br i1 %43, label %44, label %51

44:                                               ; preds = %41
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @ixp2000_uengine_init_context(i32 %45, i32 %46, i32 0)
  br label %48

48:                                               ; preds = %44
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %41

51:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %51, %31, %17, %10
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @check_ixp_type(%struct.ixp2000_uengine_code*) #1

declare dso_local i32 @ixp2000_uengine_reset(i32) #1

declare dso_local i32 @ixp2000_uengine_set_mode(i32, i32) #1

declare dso_local i64 @set_initial_registers(i32, %struct.ixp2000_uengine_code*) #1

declare dso_local i32 @ixp2000_uengine_load_microcode(i32, i32, i32) #1

declare dso_local i32 @ixp2000_uengine_init_context(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
