; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_frontend.c_agp_find_mem_by_key.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_frontend.c_agp_find_mem_by_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.agp_memory* }
%struct.agp_memory = type { i32, %struct.agp_memory* }

@agp_fe = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str = private unnamed_addr constant [17 x i8] c"key=%d -> mem=%p\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.agp_memory* @agp_find_mem_by_key(i32 %0) #0 {
  %2 = alloca %struct.agp_memory*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.agp_memory*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @agp_fe, i32 0, i32 0), align 8
  %6 = icmp eq %struct.TYPE_3__* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store %struct.agp_memory* null, %struct.agp_memory** %2, align 8
  br label %31

8:                                                ; preds = %1
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @agp_fe, i32 0, i32 0), align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.agp_memory*, %struct.agp_memory** %10, align 8
  store %struct.agp_memory* %11, %struct.agp_memory** %4, align 8
  br label %12

12:                                               ; preds = %22, %8
  %13 = load %struct.agp_memory*, %struct.agp_memory** %4, align 8
  %14 = icmp ne %struct.agp_memory* %13, null
  br i1 %14, label %15, label %26

15:                                               ; preds = %12
  %16 = load %struct.agp_memory*, %struct.agp_memory** %4, align 8
  %17 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %26

22:                                               ; preds = %15
  %23 = load %struct.agp_memory*, %struct.agp_memory** %4, align 8
  %24 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %23, i32 0, i32 1
  %25 = load %struct.agp_memory*, %struct.agp_memory** %24, align 8
  store %struct.agp_memory* %25, %struct.agp_memory** %4, align 8
  br label %12

26:                                               ; preds = %21, %12
  %27 = load i32, i32* %3, align 4
  %28 = load %struct.agp_memory*, %struct.agp_memory** %4, align 8
  %29 = call i32 @DBG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %27, %struct.agp_memory* %28)
  %30 = load %struct.agp_memory*, %struct.agp_memory** %4, align 8
  store %struct.agp_memory* %30, %struct.agp_memory** %2, align 8
  br label %31

31:                                               ; preds = %26, %7
  %32 = load %struct.agp_memory*, %struct.agp_memory** %2, align 8
  ret %struct.agp_memory* %32
}

declare dso_local i32 @DBG(i8*, i32, %struct.agp_memory*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
