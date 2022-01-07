; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mn10300/boot/compressed/extr_misc.c_decompress_kernel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mn10300/boot/compressed/extr_misc.c_decompress_kernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.moveparams = type { i32 }

@CONFIG_KERNEL_TEXT_ADDRESS = common dso_local global i64 0, align 8
@output_data = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [24 x i8] c"Uncompressing Linux... \00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Ok, booting the kernel.\0A\00", align 1
@debugflag = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @decompress_kernel(%struct.moveparams* %0) #0 {
  %2 = alloca %struct.moveparams*, align 8
  store %struct.moveparams* %0, %struct.moveparams** %2, align 8
  %3 = load i64, i64* @CONFIG_KERNEL_TEXT_ADDRESS, align 8
  %4 = inttoptr i64 %3 to i8*
  store i8* %4, i8** @output_data, align 8
  %5 = call i32 (...) @makecrc()
  %6 = call i32 @kputs(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %7 = call i32 (...) @gunzip()
  %8 = call i32 @kputs(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @makecrc(...) #1

declare dso_local i32 @kputs(i8*) #1

declare dso_local i32 @gunzip(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
