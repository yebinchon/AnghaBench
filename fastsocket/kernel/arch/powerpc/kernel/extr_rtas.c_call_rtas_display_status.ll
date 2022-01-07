; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_rtas.c_call_rtas_display_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_rtas.c_call_rtas_display_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, %struct.rtas_args }
%struct.rtas_args = type { i32, i32, i32, i8*, i32* }

@rtas = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8)* @call_rtas_display_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @call_rtas_display_status(i8 signext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.rtas_args*, align 8
  %4 = alloca i64, align 8
  store i8 %0, i8* %2, align 1
  store %struct.rtas_args* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rtas, i32 0, i32 1), %struct.rtas_args** %3, align 8
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rtas, i32 0, i32 0), align 8
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %33

8:                                                ; preds = %1
  %9 = call i64 (...) @lock_rtas()
  store i64 %9, i64* %4, align 8
  %10 = load %struct.rtas_args*, %struct.rtas_args** %3, align 8
  %11 = getelementptr inbounds %struct.rtas_args, %struct.rtas_args* %10, i32 0, i32 0
  store i32 10, i32* %11, align 8
  %12 = load %struct.rtas_args*, %struct.rtas_args** %3, align 8
  %13 = getelementptr inbounds %struct.rtas_args, %struct.rtas_args* %12, i32 0, i32 1
  store i32 1, i32* %13, align 4
  %14 = load %struct.rtas_args*, %struct.rtas_args** %3, align 8
  %15 = getelementptr inbounds %struct.rtas_args, %struct.rtas_args* %14, i32 0, i32 2
  store i32 1, i32* %15, align 8
  %16 = load %struct.rtas_args*, %struct.rtas_args** %3, align 8
  %17 = getelementptr inbounds %struct.rtas_args, %struct.rtas_args* %16, i32 0, i32 3
  %18 = load i8*, i8** %17, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 1
  %20 = bitcast i8* %19 to i32*
  %21 = load %struct.rtas_args*, %struct.rtas_args** %3, align 8
  %22 = getelementptr inbounds %struct.rtas_args, %struct.rtas_args* %21, i32 0, i32 4
  store i32* %20, i32** %22, align 8
  %23 = load i8, i8* %2, align 1
  %24 = load %struct.rtas_args*, %struct.rtas_args** %3, align 8
  %25 = getelementptr inbounds %struct.rtas_args, %struct.rtas_args* %24, i32 0, i32 3
  %26 = load i8*, i8** %25, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  store i8 %23, i8* %27, align 1
  %28 = load %struct.rtas_args*, %struct.rtas_args** %3, align 8
  %29 = call i32 @__pa(%struct.rtas_args* %28)
  %30 = call i32 @enter_rtas(i32 %29)
  %31 = load i64, i64* %4, align 8
  %32 = call i32 @unlock_rtas(i64 %31)
  br label %33

33:                                               ; preds = %8, %7
  ret void
}

declare dso_local i64 @lock_rtas(...) #1

declare dso_local i32 @enter_rtas(i32) #1

declare dso_local i32 @__pa(%struct.rtas_args*) #1

declare dso_local i32 @unlock_rtas(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
