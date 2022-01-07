; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/parport/extr_parport_pc.c_find_superio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/parport/extr_parport_pc.c_find_superio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.superio_struct = type { i64 }
%struct.parport = type { i64 }

@NR_SUPERIOS = common dso_local global i32 0, align 4
@superios = common dso_local global %struct.superio_struct* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.superio_struct* (%struct.parport*)* @find_superio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.superio_struct* @find_superio(%struct.parport* %0) #0 {
  %2 = alloca %struct.superio_struct*, align 8
  %3 = alloca %struct.parport*, align 8
  %4 = alloca i32, align 4
  store %struct.parport* %0, %struct.parport** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %26, %1
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @NR_SUPERIOS, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %29

9:                                                ; preds = %5
  %10 = load %struct.superio_struct*, %struct.superio_struct** @superios, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.superio_struct, %struct.superio_struct* %10, i64 %12
  %14 = getelementptr inbounds %struct.superio_struct, %struct.superio_struct* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.parport*, %struct.parport** %3, align 8
  %17 = getelementptr inbounds %struct.parport, %struct.parport* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %15, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %9
  %21 = load %struct.superio_struct*, %struct.superio_struct** @superios, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.superio_struct, %struct.superio_struct* %21, i64 %23
  store %struct.superio_struct* %24, %struct.superio_struct** %2, align 8
  br label %30

25:                                               ; preds = %9
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %4, align 4
  br label %5

29:                                               ; preds = %5
  store %struct.superio_struct* null, %struct.superio_struct** %2, align 8
  br label %30

30:                                               ; preds = %29, %20
  %31 = load %struct.superio_struct*, %struct.superio_struct** %2, align 8
  ret %struct.superio_struct* %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
