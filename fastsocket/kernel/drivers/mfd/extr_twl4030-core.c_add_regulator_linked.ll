; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_twl4030-core.c_add_regulator_linked.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_twl4030-core.c_add_regulator_linked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.regulator_init_data = type { i32, %struct.regulator_consumer_supply* }
%struct.regulator_consumer_supply = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"twl4030_reg\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.device* (i32, %struct.regulator_init_data*, %struct.regulator_consumer_supply*, i32)* @add_regulator_linked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.device* @add_regulator_linked(i32 %0, %struct.regulator_init_data* %1, %struct.regulator_consumer_supply* %2, i32 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.regulator_init_data*, align 8
  %8 = alloca %struct.regulator_consumer_supply*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.regulator_init_data* %1, %struct.regulator_init_data** %7, align 8
  store %struct.regulator_consumer_supply* %2, %struct.regulator_consumer_supply** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load %struct.regulator_init_data*, %struct.regulator_init_data** %7, align 8
  %11 = icmp ne %struct.regulator_init_data* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %4
  store %struct.device* null, %struct.device** %5, align 8
  br label %27

13:                                               ; preds = %4
  %14 = load %struct.regulator_consumer_supply*, %struct.regulator_consumer_supply** %8, align 8
  %15 = icmp ne %struct.regulator_consumer_supply* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %13
  %17 = load %struct.regulator_consumer_supply*, %struct.regulator_consumer_supply** %8, align 8
  %18 = load %struct.regulator_init_data*, %struct.regulator_init_data** %7, align 8
  %19 = getelementptr inbounds %struct.regulator_init_data, %struct.regulator_init_data* %18, i32 0, i32 1
  store %struct.regulator_consumer_supply* %17, %struct.regulator_consumer_supply** %19, align 8
  %20 = load i32, i32* %9, align 4
  %21 = load %struct.regulator_init_data*, %struct.regulator_init_data** %7, align 8
  %22 = getelementptr inbounds %struct.regulator_init_data, %struct.regulator_init_data* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  br label %23

23:                                               ; preds = %16, %13
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.regulator_init_data*, %struct.regulator_init_data** %7, align 8
  %26 = call %struct.device* @add_numbered_child(i32 3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %24, %struct.regulator_init_data* %25, i32 16, i32 0, i32 0, i32 0)
  store %struct.device* %26, %struct.device** %5, align 8
  br label %27

27:                                               ; preds = %23, %12
  %28 = load %struct.device*, %struct.device** %5, align 8
  ret %struct.device* %28
}

declare dso_local %struct.device* @add_numbered_child(i32, i8*, i32, %struct.regulator_init_data*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
