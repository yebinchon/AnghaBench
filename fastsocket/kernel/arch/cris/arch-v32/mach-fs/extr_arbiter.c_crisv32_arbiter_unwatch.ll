; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/mach-fs/extr_arbiter.c_crisv32_arbiter_unwatch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/mach-fs/extr_arbiter.c_crisv32_arbiter_unwatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i8*, i8*, i8* }

@marb = common dso_local global i32 0, align 4
@regi_marb = common dso_local global i32 0, align 4
@rw_intr_mask = common dso_local global i32 0, align 4
@arbiter_lock = common dso_local global i32 0, align 4
@NUMBER_OF_BP = common dso_local global i32 0, align 4
@watches = common dso_local global %struct.TYPE_7__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@regk_marb_no = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crisv32_arbiter_unwatch(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* @marb, align 4
  %6 = load i32, i32* @regi_marb, align 4
  %7 = load i32, i32* @rw_intr_mask, align 4
  call void @REG_RD(%struct.TYPE_6__* sret %4, i32 %5, i32 %6, i32 %7)
  %8 = call i32 (...) @crisv32_arbiter_init()
  %9 = call i32 @spin_lock(i32* @arbiter_lock)
  %10 = load i32, i32* %3, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %24, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @NUMBER_OF_BP, align 4
  %15 = icmp sge i32 %13, %14
  br i1 %15, label %24, label %16

16:                                               ; preds = %12
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** @watches, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %16, %12, %1
  %25 = call i32 @spin_unlock(i32* @arbiter_lock)
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %66

28:                                               ; preds = %16
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** @watches, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i64 %31
  %33 = call i32 @memset(%struct.TYPE_7__* %32, i32 0, i32 4)
  %34 = load i32, i32* %3, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %28
  %37 = load i8*, i8** @regk_marb_no, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 2
  store i8* %37, i8** %38, align 8
  br label %60

39:                                               ; preds = %28
  %40 = load i32, i32* %3, align 4
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i8*, i8** @regk_marb_no, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 1
  store i8* %43, i8** %44, align 8
  br label %59

45:                                               ; preds = %39
  %46 = load i32, i32* %3, align 4
  %47 = icmp eq i32 %46, 2
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i8*, i8** @regk_marb_no, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 1
  store i8* %49, i8** %50, align 8
  br label %58

51:                                               ; preds = %45
  %52 = load i32, i32* %3, align 4
  %53 = icmp eq i32 %52, 3
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i8*, i8** @regk_marb_no, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  store i8* %55, i8** %56, align 8
  br label %57

57:                                               ; preds = %54, %51
  br label %58

58:                                               ; preds = %57, %48
  br label %59

59:                                               ; preds = %58, %42
  br label %60

60:                                               ; preds = %59, %36
  %61 = load i32, i32* @marb, align 4
  %62 = load i32, i32* @regi_marb, align 4
  %63 = load i32, i32* @rw_intr_mask, align 4
  %64 = call i32 @REG_WR(i32 %61, i32 %62, i32 %63, %struct.TYPE_6__* byval(%struct.TYPE_6__) align 8 %4)
  %65 = call i32 @spin_unlock(i32* @arbiter_lock)
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %60, %24
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local void @REG_RD(%struct.TYPE_6__* sret, i32, i32, i32) #1

declare dso_local i32 @crisv32_arbiter_init(...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @REG_WR(i32, i32, i32, %struct.TYPE_6__* byval(%struct.TYPE_6__) align 8) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
