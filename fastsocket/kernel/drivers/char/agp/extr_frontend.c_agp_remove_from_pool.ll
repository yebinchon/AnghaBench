; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_frontend.c_agp_remove_from_pool.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_frontend.c_agp_remove_from_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.agp_memory* }
%struct.agp_memory = type { %struct.agp_memory*, %struct.agp_memory*, i32 }

@.str = private unnamed_addr constant [7 x i8] c"mem=%p\00", align 1
@agp_fe = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.agp_memory*)* @agp_remove_from_pool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @agp_remove_from_pool(%struct.agp_memory* %0) #0 {
  %2 = alloca %struct.agp_memory*, align 8
  %3 = alloca %struct.agp_memory*, align 8
  %4 = alloca %struct.agp_memory*, align 8
  store %struct.agp_memory* %0, %struct.agp_memory** %2, align 8
  %5 = load %struct.agp_memory*, %struct.agp_memory** %2, align 8
  %6 = call i32 @DBG(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.agp_memory* %5)
  %7 = load %struct.agp_memory*, %struct.agp_memory** %2, align 8
  %8 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = call i32* @agp_find_mem_by_key(i32 %9)
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %43

12:                                               ; preds = %1
  %13 = load %struct.agp_memory*, %struct.agp_memory** %2, align 8
  %14 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %13, i32 0, i32 1
  %15 = load %struct.agp_memory*, %struct.agp_memory** %14, align 8
  store %struct.agp_memory* %15, %struct.agp_memory** %4, align 8
  %16 = load %struct.agp_memory*, %struct.agp_memory** %2, align 8
  %17 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %16, i32 0, i32 0
  %18 = load %struct.agp_memory*, %struct.agp_memory** %17, align 8
  store %struct.agp_memory* %18, %struct.agp_memory** %3, align 8
  %19 = load %struct.agp_memory*, %struct.agp_memory** %3, align 8
  %20 = icmp ne %struct.agp_memory* %19, null
  br i1 %20, label %21, label %32

21:                                               ; preds = %12
  %22 = load %struct.agp_memory*, %struct.agp_memory** %4, align 8
  %23 = load %struct.agp_memory*, %struct.agp_memory** %3, align 8
  %24 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %23, i32 0, i32 1
  store %struct.agp_memory* %22, %struct.agp_memory** %24, align 8
  %25 = load %struct.agp_memory*, %struct.agp_memory** %4, align 8
  %26 = icmp ne %struct.agp_memory* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load %struct.agp_memory*, %struct.agp_memory** %3, align 8
  %29 = load %struct.agp_memory*, %struct.agp_memory** %4, align 8
  %30 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %29, i32 0, i32 0
  store %struct.agp_memory* %28, %struct.agp_memory** %30, align 8
  br label %31

31:                                               ; preds = %27, %21
  br label %42

32:                                               ; preds = %12
  %33 = load %struct.agp_memory*, %struct.agp_memory** %4, align 8
  %34 = icmp ne %struct.agp_memory* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load %struct.agp_memory*, %struct.agp_memory** %4, align 8
  %37 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %36, i32 0, i32 0
  store %struct.agp_memory* null, %struct.agp_memory** %37, align 8
  br label %38

38:                                               ; preds = %35, %32
  %39 = load %struct.agp_memory*, %struct.agp_memory** %4, align 8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @agp_fe, i32 0, i32 0), align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  store %struct.agp_memory* %39, %struct.agp_memory** %41, align 8
  br label %42

42:                                               ; preds = %38, %31
  br label %43

43:                                               ; preds = %42, %1
  ret void
}

declare dso_local i32 @DBG(i8*, %struct.agp_memory*) #1

declare dso_local i32* @agp_find_mem_by_key(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
