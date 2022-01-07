; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_devres.c_devres_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_devres.c_devres_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.devres = type { i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"REM\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @devres_remove(%struct.device* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.devres*, align 8
  %11 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %12 = load %struct.device*, %struct.device** %6, align 8
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 0
  %14 = load i64, i64* %11, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i8*, i8** %9, align 8
  %20 = call %struct.devres* @find_dr(%struct.device* %16, i32 %17, i32 %18, i8* %19)
  store %struct.devres* %20, %struct.devres** %10, align 8
  %21 = load %struct.devres*, %struct.devres** %10, align 8
  %22 = icmp ne %struct.devres* %21, null
  br i1 %22, label %23, label %32

23:                                               ; preds = %4
  %24 = load %struct.devres*, %struct.devres** %10, align 8
  %25 = getelementptr inbounds %struct.devres, %struct.devres* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = call i32 @list_del_init(i32* %26)
  %28 = load %struct.device*, %struct.device** %6, align 8
  %29 = load %struct.devres*, %struct.devres** %10, align 8
  %30 = getelementptr inbounds %struct.devres, %struct.devres* %29, i32 0, i32 1
  %31 = call i32 @devres_log(%struct.device* %28, %struct.TYPE_2__* %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %23, %4
  %33 = load %struct.device*, %struct.device** %6, align 8
  %34 = getelementptr inbounds %struct.device, %struct.device* %33, i32 0, i32 0
  %35 = load i64, i64* %11, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32* %34, i64 %35)
  %37 = load %struct.devres*, %struct.devres** %10, align 8
  %38 = icmp ne %struct.devres* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %32
  %40 = load %struct.devres*, %struct.devres** %10, align 8
  %41 = getelementptr inbounds %struct.devres, %struct.devres* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  store i8* %42, i8** %5, align 8
  br label %44

43:                                               ; preds = %32
  store i8* null, i8** %5, align 8
  br label %44

44:                                               ; preds = %43, %39
  %45 = load i8*, i8** %5, align 8
  ret i8* %45
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.devres* @find_dr(%struct.device*, i32, i32, i8*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @devres_log(%struct.device*, %struct.TYPE_2__*, i8*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
