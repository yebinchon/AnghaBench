; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/powermac/extr_pfunc_core.c_pmf_call_one.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/powermac/extr_pfunc_core.c_pmf_call_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmf_function = type { i32, %struct.pmf_device* }
%struct.pmf_device = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 (%struct.pmf_function*, i8*)*, i8* (%struct.pmf_function*, %struct.pmf_args*)* }
%struct.TYPE_3__ = type { i32 }
%struct.pmf_args = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c" ** pmf_call_one(%s/%s) **\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pmf_call_one(%struct.pmf_function* %0, %struct.pmf_args* %1) #0 {
  %3 = alloca %struct.pmf_function*, align 8
  %4 = alloca %struct.pmf_args*, align 8
  %5 = alloca %struct.pmf_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.pmf_function* %0, %struct.pmf_function** %3, align 8
  store %struct.pmf_args* %1, %struct.pmf_args** %4, align 8
  %8 = load %struct.pmf_function*, %struct.pmf_function** %3, align 8
  %9 = getelementptr inbounds %struct.pmf_function, %struct.pmf_function* %8, i32 0, i32 1
  %10 = load %struct.pmf_device*, %struct.pmf_device** %9, align 8
  store %struct.pmf_device* %10, %struct.pmf_device** %5, align 8
  store i8* null, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.pmf_device*, %struct.pmf_device** %5, align 8
  %12 = getelementptr inbounds %struct.pmf_device, %struct.pmf_device* %11, i32 0, i32 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.pmf_function*, %struct.pmf_function** %3, align 8
  %17 = getelementptr inbounds %struct.pmf_function, %struct.pmf_function* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @DBG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %18)
  %20 = load %struct.pmf_device*, %struct.pmf_device** %5, align 8
  %21 = getelementptr inbounds %struct.pmf_device, %struct.pmf_device* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i8* (%struct.pmf_function*, %struct.pmf_args*)*, i8* (%struct.pmf_function*, %struct.pmf_args*)** %23, align 8
  %25 = icmp ne i8* (%struct.pmf_function*, %struct.pmf_args*)* %24, null
  br i1 %25, label %26, label %35

26:                                               ; preds = %2
  %27 = load %struct.pmf_device*, %struct.pmf_device** %5, align 8
  %28 = getelementptr inbounds %struct.pmf_device, %struct.pmf_device* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i8* (%struct.pmf_function*, %struct.pmf_args*)*, i8* (%struct.pmf_function*, %struct.pmf_args*)** %30, align 8
  %32 = load %struct.pmf_function*, %struct.pmf_function** %3, align 8
  %33 = load %struct.pmf_args*, %struct.pmf_args** %4, align 8
  %34 = call i8* %31(%struct.pmf_function* %32, %struct.pmf_args* %33)
  store i8* %34, i8** %6, align 8
  br label %35

35:                                               ; preds = %26, %2
  %36 = load %struct.pmf_function*, %struct.pmf_function** %3, align 8
  %37 = load %struct.pmf_device*, %struct.pmf_device** %5, align 8
  %38 = getelementptr inbounds %struct.pmf_device, %struct.pmf_device* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = load %struct.pmf_args*, %struct.pmf_args** %4, align 8
  %42 = call i32 @pmf_parse_one(%struct.pmf_function* %36, %struct.TYPE_4__* %39, i8* %40, %struct.pmf_args* %41)
  store i32 %42, i32* %7, align 4
  %43 = load %struct.pmf_device*, %struct.pmf_device** %5, align 8
  %44 = getelementptr inbounds %struct.pmf_device, %struct.pmf_device* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32 (%struct.pmf_function*, i8*)*, i32 (%struct.pmf_function*, i8*)** %46, align 8
  %48 = icmp ne i32 (%struct.pmf_function*, i8*)* %47, null
  br i1 %48, label %49, label %58

49:                                               ; preds = %35
  %50 = load %struct.pmf_device*, %struct.pmf_device** %5, align 8
  %51 = getelementptr inbounds %struct.pmf_device, %struct.pmf_device* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32 (%struct.pmf_function*, i8*)*, i32 (%struct.pmf_function*, i8*)** %53, align 8
  %55 = load %struct.pmf_function*, %struct.pmf_function** %3, align 8
  %56 = load i8*, i8** %6, align 8
  %57 = call i32 %54(%struct.pmf_function* %55, i8* %56)
  br label %58

58:                                               ; preds = %49, %35
  %59 = load i32, i32* %7, align 4
  ret i32 %59
}

declare dso_local i32 @DBG(i8*, i32, i32) #1

declare dso_local i32 @pmf_parse_one(%struct.pmf_function*, %struct.TYPE_4__*, i8*, %struct.pmf_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
