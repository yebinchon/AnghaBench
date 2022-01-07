; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_me4000.c_ai_write_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_me4000.c_ai_write_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }
%struct.comedi_device = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"In ai_write_timer()\0A\00", align 1
@info = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, i32, i32, i32)* @ai_write_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ai_write_timer(%struct.comedi_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = call i32 @CALL_PDEBUG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = sub i32 %11, 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** @info, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @me4000_outl(%struct.comedi_device* %10, i32 %12, i32 %16)
  %18 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @info, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @me4000_outl(%struct.comedi_device* %18, i32 0, i32 %22)
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %4
  %27 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sub i32 %28, 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** @info, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @me4000_outl(%struct.comedi_device* %27, i32 %29, i32 %33)
  %35 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** @info, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @me4000_outl(%struct.comedi_device* %35, i32 0, i32 %39)
  br label %41

41:                                               ; preds = %26, %4
  %42 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sub i32 %43, 1
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** @info, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @me4000_outl(%struct.comedi_device* %42, i32 %44, i32 %48)
  %50 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sub i32 %51, 1
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** @info, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @me4000_outl(%struct.comedi_device* %50, i32 %52, i32 %56)
  ret void
}

declare dso_local i32 @CALL_PDEBUG(i8*) #1

declare dso_local i32 @me4000_outl(%struct.comedi_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
