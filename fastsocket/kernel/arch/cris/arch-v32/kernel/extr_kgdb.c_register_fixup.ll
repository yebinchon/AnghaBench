; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/kernel/extr_kgdb.c_register_fixup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/kernel/extr_kgdb.c_register_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i64 }

@reg = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@SIGTRAP = common dso_local global i32 0, align 4
@dynamic_bp = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @register_fixup(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @reg, i32 0, i32 0), align 8
  %4 = add nsw i32 %3, 4
  store i32 %4, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @reg, i32 0, i32 0), align 8
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @reg, i32 0, i32 2), align 8
  store i32 %5, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @reg, i32 0, i32 1), align 4
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @reg, i32 0, i32 2), align 8
  %7 = and i32 %6, 1
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %1
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @reg, i32 0, i32 3), align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @reg, i32 0, i32 3), align 4
  store i32 %13, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @reg, i32 0, i32 1), align 4
  br label %21

14:                                               ; preds = %9
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @reg, i32 0, i32 2), align 8
  %16 = and i32 %15, -2
  %17 = call i32 @insn_size(i32 %16)
  %18 = sub nsw i32 %17, 1
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @reg, i32 0, i32 1), align 4
  %20 = add nsw i32 %19, %18
  store i32 %20, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @reg, i32 0, i32 1), align 4
  br label %21

21:                                               ; preds = %14, %12
  br label %22

22:                                               ; preds = %21, %1
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @reg, i32 0, i32 4), align 8
  %24 = and i32 %23, 3
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @reg, i32 0, i32 5), align 8
  br label %27

27:                                               ; preds = %26, %22
  %28 = load i32, i32* %2, align 4
  %29 = load i32, i32* @SIGTRAP, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %66

31:                                               ; preds = %27
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @reg, i32 0, i32 4), align 8
  %33 = and i32 %32, 65280
  %34 = ashr i32 %33, 8
  %35 = icmp eq i32 %34, 24
  br i1 %35, label %36, label %51

36:                                               ; preds = %31
  %37 = load i32, i32* @dynamic_bp, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %36
  store i32 1, i32* @dynamic_bp, align 4
  br label %50

40:                                               ; preds = %36
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @reg, i32 0, i32 2), align 8
  %42 = and i32 %41, 1
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %40
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @reg, i32 0, i32 2), align 8
  %46 = sub nsw i32 %45, 2
  store i32 %46, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @reg, i32 0, i32 2), align 8
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @reg, i32 0, i32 1), align 4
  %48 = sub nsw i32 %47, 2
  store i32 %48, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @reg, i32 0, i32 1), align 4
  br label %49

49:                                               ; preds = %44, %40
  br label %50

50:                                               ; preds = %49, %39
  br label %65

51:                                               ; preds = %31
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @reg, i32 0, i32 4), align 8
  %53 = and i32 %52, 65280
  %54 = ashr i32 %53, 8
  %55 = icmp eq i32 %54, 3
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %64

57:                                               ; preds = %51
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @reg, i32 0, i32 4), align 8
  %59 = and i32 %58, 65280
  %60 = ashr i32 %59, 8
  %61 = icmp eq i32 %60, 12
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @reg, i32 0, i32 3), align 4
  br label %63

63:                                               ; preds = %62, %57
  br label %64

64:                                               ; preds = %63, %56
  br label %65

65:                                               ; preds = %64, %50
  br label %72

66:                                               ; preds = %27
  %67 = load i32, i32* %2, align 4
  %68 = load i32, i32* @SIGINT, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  br label %71

71:                                               ; preds = %70, %66
  br label %72

72:                                               ; preds = %71, %65
  ret void
}

declare dso_local i32 @insn_size(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
