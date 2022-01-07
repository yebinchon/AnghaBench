; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_rtas_flash.c_manage_flash.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_rtas_flash.c_manage_flash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtas_manage_flash_t = type { i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"ibm,manage-flash-image\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtas_manage_flash_t*)* @manage_flash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @manage_flash(%struct.rtas_manage_flash_t* %0) #0 {
  %2 = alloca %struct.rtas_manage_flash_t*, align 8
  %3 = alloca i32, align 4
  store %struct.rtas_manage_flash_t* %0, %struct.rtas_manage_flash_t** %2, align 8
  br label %4

4:                                                ; preds = %10, %1
  %5 = call i32 @rtas_token(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.rtas_manage_flash_t*, %struct.rtas_manage_flash_t** %2, align 8
  %7 = getelementptr inbounds %struct.rtas_manage_flash_t, %struct.rtas_manage_flash_t* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @rtas_call(i32 %5, i32 1, i32 1, i32* null, i32 %8)
  store i32 %9, i32* %3, align 4
  br label %10

10:                                               ; preds = %4
  %11 = load i32, i32* %3, align 4
  %12 = call i64 @rtas_busy_delay(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %4, label %14

14:                                               ; preds = %10
  %15 = load i32, i32* %3, align 4
  %16 = load %struct.rtas_manage_flash_t*, %struct.rtas_manage_flash_t** %2, align 8
  %17 = getelementptr inbounds %struct.rtas_manage_flash_t, %struct.rtas_manage_flash_t* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  ret void
}

declare dso_local i32 @rtas_call(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @rtas_token(i8*) #1

declare dso_local i64 @rtas_busy_delay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
