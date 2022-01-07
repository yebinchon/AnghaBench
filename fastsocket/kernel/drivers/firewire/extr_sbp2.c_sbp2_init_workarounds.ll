; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_sbp2.c_sbp2_init_workarounds.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_sbp2.c_sbp2_init_workarounds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.sbp2_target = type { i32, i32 }

@sbp2_param_workarounds = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [98 x i8] c"Please notify linux1394-devel@lists.sourceforge.net if you need the workarounds parameter for %s\0A\00", align 1
@SBP2_WORKAROUND_OVERRIDE = common dso_local global i32 0, align 4
@sbp2_workarounds_table = common dso_local global %struct.TYPE_3__* null, align 8
@SBP2_ROM_VALUE_WILDCARD = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [70 x i8] c"Workarounds for %s: 0x%x (firmware_revision 0x%06x, model_id 0x%06x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sbp2_target*, i32, i32)* @sbp2_init_workarounds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sbp2_init_workarounds(%struct.sbp2_target* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sbp2_target*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sbp2_target* %0, %struct.sbp2_target** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @sbp2_param_workarounds, align 4
  store i32 %9, i32* %8, align 4
  %10 = load i32, i32* %8, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = load %struct.sbp2_target*, %struct.sbp2_target** %4, align 8
  %14 = getelementptr inbounds %struct.sbp2_target, %struct.sbp2_target* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 (i8*, i32, ...) @fw_notify(i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str, i64 0, i64 0), i32 %15)
  br label %17

17:                                               ; preds = %12, %3
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @SBP2_WORKAROUND_OVERRIDE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %73

23:                                               ; preds = %17
  store i32 0, i32* %7, align 4
  br label %24

24:                                               ; preds = %69, %23
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** @sbp2_workarounds_table, align 8
  %27 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %26)
  %28 = icmp slt i32 %25, %27
  br i1 %28, label %29, label %72

29:                                               ; preds = %24
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** @sbp2_workarounds_table, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %6, align 4
  %37 = and i32 %36, -256
  %38 = icmp ne i32 %35, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  br label %69

40:                                               ; preds = %29
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** @sbp2_workarounds_table, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %60

49:                                               ; preds = %40
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** @sbp2_workarounds_table, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = load i64, i64* @SBP2_ROM_VALUE_WILDCARD, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %49
  br label %69

60:                                               ; preds = %49, %40
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** @sbp2_workarounds_table, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %8, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %8, align 4
  br label %72

69:                                               ; preds = %59, %39
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %7, align 4
  br label %24

72:                                               ; preds = %60, %24
  br label %73

73:                                               ; preds = %72, %22
  %74 = load i32, i32* %8, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %73
  %77 = load %struct.sbp2_target*, %struct.sbp2_target** %4, align 8
  %78 = getelementptr inbounds %struct.sbp2_target, %struct.sbp2_target* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* %5, align 4
  %83 = call i32 (i8*, i32, ...) @fw_notify(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i32 %79, i32 %80, i32 %81, i32 %82)
  br label %84

84:                                               ; preds = %76, %73
  %85 = load i32, i32* %8, align 4
  %86 = load %struct.sbp2_target*, %struct.sbp2_target** %4, align 8
  %87 = getelementptr inbounds %struct.sbp2_target, %struct.sbp2_target* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 4
  ret void
}

declare dso_local i32 @fw_notify(i8*, i32, ...) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
