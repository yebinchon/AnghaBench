; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/kernel/extr_err_common.c_mchk_dump_logout_frame.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/kernel/extr_err_common.c_mchk_dump_logout_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.el_common = type { i64, i64, i64, i32, i32, i64, i64 }

@.str = private unnamed_addr constant [200 x i8] c"%s  -- Frame Header --\0A    Frame Size:   %d (0x%x) bytes\0A    Flags:        %s%s\0A    MCHK Code:    0x%x\0A    Frame Rev:    %d\0A    Proc Offset:  0x%08x\0A    Sys Offset:   0x%08x\0A  -- Processor Region --\0A\00", align 1
@err_print_prefix = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"RETRY \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"SECOND_ERR \00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"%s  -- System Region --\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"%s  -- End of Frame --\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mchk_dump_logout_frame(%struct.el_common* %0) #0 {
  %2 = alloca %struct.el_common*, align 8
  store %struct.el_common* %0, %struct.el_common** %2, align 8
  %3 = load i32, i32* @err_print_prefix, align 4
  %4 = load %struct.el_common*, %struct.el_common** %2, align 8
  %5 = getelementptr inbounds %struct.el_common, %struct.el_common* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = load %struct.el_common*, %struct.el_common** %2, align 8
  %8 = getelementptr inbounds %struct.el_common, %struct.el_common* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.el_common*, %struct.el_common** %2, align 8
  %11 = getelementptr inbounds %struct.el_common, %struct.el_common* %10, i32 0, i32 6
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %16 = load %struct.el_common*, %struct.el_common** %2, align 8
  %17 = getelementptr inbounds %struct.el_common, %struct.el_common* %16, i32 0, i32 5
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %22 = load %struct.el_common*, %struct.el_common** %2, align 8
  %23 = getelementptr inbounds %struct.el_common, %struct.el_common* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.el_common*, %struct.el_common** %2, align 8
  %26 = getelementptr inbounds %struct.el_common, %struct.el_common* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.el_common*, %struct.el_common** %2, align 8
  %29 = getelementptr inbounds %struct.el_common, %struct.el_common* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.el_common*, %struct.el_common** %2, align 8
  %32 = getelementptr inbounds %struct.el_common, %struct.el_common* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([200 x i8], [200 x i8]* @.str, i64 0, i64 0), i32 %3, i64 %6, i64 %9, i8* %15, i8* %21, i32 %24, i32 %27, i64 %30, i64 %33)
  %35 = load %struct.el_common*, %struct.el_common** %2, align 8
  %36 = ptrtoint %struct.el_common* %35 to i64
  %37 = load %struct.el_common*, %struct.el_common** %2, align 8
  %38 = getelementptr inbounds %struct.el_common, %struct.el_common* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = add i64 %36, %39
  %41 = inttoptr i64 %40 to i8*
  %42 = load %struct.el_common*, %struct.el_common** %2, align 8
  %43 = getelementptr inbounds %struct.el_common, %struct.el_common* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.el_common*, %struct.el_common** %2, align 8
  %46 = getelementptr inbounds %struct.el_common, %struct.el_common* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = sub nsw i64 %44, %47
  %49 = call i32 @mchk_dump_mem(i8* %41, i64 %48, i32* null)
  %50 = load i32, i32* @err_print_prefix, align 4
  %51 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %50)
  %52 = load %struct.el_common*, %struct.el_common** %2, align 8
  %53 = ptrtoint %struct.el_common* %52 to i64
  %54 = load %struct.el_common*, %struct.el_common** %2, align 8
  %55 = getelementptr inbounds %struct.el_common, %struct.el_common* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = add i64 %53, %56
  %58 = inttoptr i64 %57 to i8*
  %59 = load %struct.el_common*, %struct.el_common** %2, align 8
  %60 = getelementptr inbounds %struct.el_common, %struct.el_common* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.el_common*, %struct.el_common** %2, align 8
  %63 = getelementptr inbounds %struct.el_common, %struct.el_common* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = sub nsw i64 %61, %64
  %66 = call i32 @mchk_dump_mem(i8* %58, i64 %65, i32* null)
  %67 = load i32, i32* @err_print_prefix, align 4
  %68 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %67)
  ret void
}

declare dso_local i32 @printk(i8*, i32, ...) #1

declare dso_local i32 @mchk_dump_mem(i8*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
