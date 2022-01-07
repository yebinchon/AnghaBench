; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/oprofile/extr_op_model_sh7750.c_sh7750_ppc_reg_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/oprofile/extr_op_model_sh7750.c_sh7750_ppc_reg_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i64, i64 }
%struct.op_counter_config = type { i32, i32, i32 }

@op_model_sh7750_ops = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@regcache = common dso_local global %struct.TYPE_3__* null, align 8
@PMCR_PMEN = common dso_local global i32 0, align 4
@PMCR_PMST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.op_counter_config*)* @sh7750_ppc_reg_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh7750_ppc_reg_setup(%struct.op_counter_config* %0) #0 {
  %2 = alloca %struct.op_counter_config*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.op_counter_config* %0, %struct.op_counter_config** %2, align 8
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @op_model_sh7750_ops, i32 0, i32 0), align 4
  store i32 %5, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %72, %1
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp ult i32 %7, %8
  br i1 %9, label %10, label %75

10:                                               ; preds = %6
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** @regcache, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store i32 0, i32* %15, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** @regcache, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  store i64 0, i64* %20, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** @regcache, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  store i64 0, i64* %25, align 8
  %26 = load %struct.op_counter_config*, %struct.op_counter_config** %2, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %26, i64 %28
  %30 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %10
  br label %72

34:                                               ; preds = %10
  %35 = load %struct.op_counter_config*, %struct.op_counter_config** %2, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %35, i64 %37
  %39 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @PMCR_PMEN, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @PMCR_PMST, align 4
  %44 = or i32 %42, %43
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** @regcache, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %50, %44
  store i32 %51, i32* %49, align 8
  %52 = load %struct.op_counter_config*, %struct.op_counter_config** %2, align 8
  %53 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = ashr i32 %54, 32
  %56 = and i32 %55, 65535
  %57 = sext i32 %56 to i64
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** @regcache, align 8
  %59 = load i32, i32* %4, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  store i64 %57, i64* %62, align 8
  %63 = load %struct.op_counter_config*, %struct.op_counter_config** %2, align 8
  %64 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = zext i32 %65 to i64
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** @regcache, align 8
  %68 = load i32, i32* %4, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 2
  store i64 %66, i64* %71, align 8
  br label %72

72:                                               ; preds = %34, %33
  %73 = load i32, i32* %4, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %4, align 4
  br label %6

75:                                               ; preds = %6
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
