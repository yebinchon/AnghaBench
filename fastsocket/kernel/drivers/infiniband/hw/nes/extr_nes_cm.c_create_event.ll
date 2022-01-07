; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_cm.c_create_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_cm.c_create_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nes_cm_event = type { i32, %struct.TYPE_2__, %struct.nes_cm_node* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i64 }
%struct.nes_cm_node = type { i64, i32, i32, i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@NES_DBG_CM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [76 x i8] c"cm_node=%p Created event=%p, type=%u, dst_addr=%08x[%x], src_addr=%08x[%x]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nes_cm_event* (%struct.nes_cm_node*, i32)* @create_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nes_cm_event* @create_event(%struct.nes_cm_node* %0, i32 %1) #0 {
  %3 = alloca %struct.nes_cm_event*, align 8
  %4 = alloca %struct.nes_cm_node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nes_cm_event*, align 8
  store %struct.nes_cm_node* %0, %struct.nes_cm_node** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.nes_cm_node*, %struct.nes_cm_node** %4, align 8
  %8 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.nes_cm_event* null, %struct.nes_cm_event** %3, align 8
  br label %79

12:                                               ; preds = %2
  %13 = load i32, i32* @GFP_ATOMIC, align 4
  %14 = call %struct.nes_cm_event* @kzalloc(i32 40, i32 %13)
  store %struct.nes_cm_event* %14, %struct.nes_cm_event** %6, align 8
  %15 = load %struct.nes_cm_event*, %struct.nes_cm_event** %6, align 8
  %16 = icmp ne %struct.nes_cm_event* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  store %struct.nes_cm_event* null, %struct.nes_cm_event** %3, align 8
  br label %79

18:                                               ; preds = %12
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.nes_cm_event*, %struct.nes_cm_event** %6, align 8
  %21 = getelementptr inbounds %struct.nes_cm_event, %struct.nes_cm_event* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.nes_cm_node*, %struct.nes_cm_node** %4, align 8
  %23 = load %struct.nes_cm_event*, %struct.nes_cm_event** %6, align 8
  %24 = getelementptr inbounds %struct.nes_cm_event, %struct.nes_cm_event* %23, i32 0, i32 2
  store %struct.nes_cm_node* %22, %struct.nes_cm_node** %24, align 8
  %25 = load %struct.nes_cm_node*, %struct.nes_cm_node** %4, align 8
  %26 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.nes_cm_event*, %struct.nes_cm_event** %6, align 8
  %29 = getelementptr inbounds %struct.nes_cm_event, %struct.nes_cm_event* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  store i32 %27, i32* %30, align 4
  %31 = load %struct.nes_cm_node*, %struct.nes_cm_node** %4, align 8
  %32 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.nes_cm_event*, %struct.nes_cm_event** %6, align 8
  %35 = getelementptr inbounds %struct.nes_cm_event, %struct.nes_cm_event* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 3
  store i32 %33, i32* %36, align 4
  %37 = load %struct.nes_cm_node*, %struct.nes_cm_node** %4, align 8
  %38 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.nes_cm_event*, %struct.nes_cm_event** %6, align 8
  %41 = getelementptr inbounds %struct.nes_cm_event, %struct.nes_cm_event* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 8
  %43 = load %struct.nes_cm_node*, %struct.nes_cm_node** %4, align 8
  %44 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.nes_cm_event*, %struct.nes_cm_event** %6, align 8
  %47 = getelementptr inbounds %struct.nes_cm_event, %struct.nes_cm_event* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 2
  store i32 %45, i32* %48, align 8
  %49 = load %struct.nes_cm_node*, %struct.nes_cm_node** %4, align 8
  %50 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.nes_cm_event*, %struct.nes_cm_event** %6, align 8
  %53 = getelementptr inbounds %struct.nes_cm_event, %struct.nes_cm_event* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 4
  store i64 %51, i64* %54, align 8
  %55 = load i32, i32* @NES_DBG_CM, align 4
  %56 = load %struct.nes_cm_node*, %struct.nes_cm_node** %4, align 8
  %57 = load %struct.nes_cm_event*, %struct.nes_cm_event** %6, align 8
  %58 = load i32, i32* %5, align 4
  %59 = load %struct.nes_cm_event*, %struct.nes_cm_event** %6, align 8
  %60 = getelementptr inbounds %struct.nes_cm_event, %struct.nes_cm_event* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.nes_cm_event*, %struct.nes_cm_event** %6, align 8
  %64 = getelementptr inbounds %struct.nes_cm_event, %struct.nes_cm_event* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.nes_cm_event*, %struct.nes_cm_event** %6, align 8
  %68 = getelementptr inbounds %struct.nes_cm_event, %struct.nes_cm_event* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.nes_cm_event*, %struct.nes_cm_event** %6, align 8
  %72 = getelementptr inbounds %struct.nes_cm_event, %struct.nes_cm_event* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @nes_debug(i32 %55, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0), %struct.nes_cm_node* %56, %struct.nes_cm_event* %57, i32 %58, i32 %62, i32 %66, i32 %70, i32 %74)
  %76 = load %struct.nes_cm_event*, %struct.nes_cm_event** %6, align 8
  %77 = call i32 @nes_cm_post_event(%struct.nes_cm_event* %76)
  %78 = load %struct.nes_cm_event*, %struct.nes_cm_event** %6, align 8
  store %struct.nes_cm_event* %78, %struct.nes_cm_event** %3, align 8
  br label %79

79:                                               ; preds = %18, %17, %11
  %80 = load %struct.nes_cm_event*, %struct.nes_cm_event** %3, align 8
  ret %struct.nes_cm_event* %80
}

declare dso_local %struct.nes_cm_event* @kzalloc(i32, i32) #1

declare dso_local i32 @nes_debug(i32, i8*, %struct.nes_cm_node*, %struct.nes_cm_event*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @nes_cm_post_event(%struct.nes_cm_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
