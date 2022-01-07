; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_qdio_debug.c_qdio_allocate_dbf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_qdio_debug.c_qdio_allocate_dbf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qdio_initialize = type { i64, i64, %struct.TYPE_2__*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.qdio_irq = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"qfmt:%1d\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"qpff%4x\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"niq:%1d noq:%1d\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"irq:%8lx\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"qdio_%s\00", align 1
@debug_hex_ascii_view = common dso_local global i32 0, align 4
@DBF_WARN = common dso_local global i32 0, align 4
@DBF_ERR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"dbf created\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qdio_allocate_dbf(%struct.qdio_initialize* %0, %struct.qdio_irq* %1) #0 {
  %3 = alloca %struct.qdio_initialize*, align 8
  %4 = alloca %struct.qdio_irq*, align 8
  %5 = alloca [20 x i8], align 16
  store %struct.qdio_initialize* %0, %struct.qdio_initialize** %3, align 8
  store %struct.qdio_irq* %1, %struct.qdio_irq** %4, align 8
  %6 = load %struct.qdio_initialize*, %struct.qdio_initialize** %3, align 8
  %7 = getelementptr inbounds %struct.qdio_initialize, %struct.qdio_initialize* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = call i32 (i8*, i64, ...) @DBF_EVENT(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i64 %8)
  %10 = load %struct.qdio_initialize*, %struct.qdio_initialize** %3, align 8
  %11 = getelementptr inbounds %struct.qdio_initialize, %struct.qdio_initialize* %10, i32 0, i32 14
  %12 = load i32*, i32** %11, align 8
  %13 = call i32 @DBF_HEX(i32* %12, i32 8)
  %14 = load %struct.qdio_initialize*, %struct.qdio_initialize** %3, align 8
  %15 = getelementptr inbounds %struct.qdio_initialize, %struct.qdio_initialize* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = call i32 (i8*, i64, ...) @DBF_EVENT(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %16)
  %18 = load %struct.qdio_initialize*, %struct.qdio_initialize** %3, align 8
  %19 = getelementptr inbounds %struct.qdio_initialize, %struct.qdio_initialize* %18, i32 0, i32 13
  %20 = call i32 @DBF_HEX(i32* %19, i32 8)
  %21 = load %struct.qdio_initialize*, %struct.qdio_initialize** %3, align 8
  %22 = getelementptr inbounds %struct.qdio_initialize, %struct.qdio_initialize* %21, i32 0, i32 12
  %23 = call i32 @DBF_HEX(i32* %22, i32 8)
  %24 = load %struct.qdio_initialize*, %struct.qdio_initialize** %3, align 8
  %25 = getelementptr inbounds %struct.qdio_initialize, %struct.qdio_initialize* %24, i32 0, i32 11
  %26 = call i32 @DBF_HEX(i32* %25, i32 8)
  %27 = load %struct.qdio_initialize*, %struct.qdio_initialize** %3, align 8
  %28 = getelementptr inbounds %struct.qdio_initialize, %struct.qdio_initialize* %27, i32 0, i32 10
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = load %struct.qdio_initialize*, %struct.qdio_initialize** %3, align 8
  %32 = getelementptr inbounds %struct.qdio_initialize, %struct.qdio_initialize* %31, i32 0, i32 9
  %33 = load i32, i32* %32, align 8
  %34 = call i32 (i8*, i64, ...) @DBF_EVENT(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i64 %30, i32 %33)
  %35 = load %struct.qdio_initialize*, %struct.qdio_initialize** %3, align 8
  %36 = getelementptr inbounds %struct.qdio_initialize, %struct.qdio_initialize* %35, i32 0, i32 8
  %37 = call i32 @DBF_HEX(i32* %36, i32 8)
  %38 = load %struct.qdio_initialize*, %struct.qdio_initialize** %3, align 8
  %39 = getelementptr inbounds %struct.qdio_initialize, %struct.qdio_initialize* %38, i32 0, i32 7
  %40 = call i32 @DBF_HEX(i32* %39, i32 8)
  %41 = load %struct.qdio_initialize*, %struct.qdio_initialize** %3, align 8
  %42 = getelementptr inbounds %struct.qdio_initialize, %struct.qdio_initialize* %41, i32 0, i32 6
  %43 = call i32 @DBF_HEX(i32* %42, i32 8)
  %44 = load %struct.qdio_initialize*, %struct.qdio_initialize** %3, align 8
  %45 = getelementptr inbounds %struct.qdio_initialize, %struct.qdio_initialize* %44, i32 0, i32 5
  %46 = call i32 @DBF_HEX(i32* %45, i32 8)
  %47 = load %struct.qdio_initialize*, %struct.qdio_initialize** %3, align 8
  %48 = getelementptr inbounds %struct.qdio_initialize, %struct.qdio_initialize* %47, i32 0, i32 4
  %49 = call i32 @DBF_HEX(i32* %48, i32 8)
  %50 = load %struct.qdio_initialize*, %struct.qdio_initialize** %3, align 8
  %51 = getelementptr inbounds %struct.qdio_initialize, %struct.qdio_initialize* %50, i32 0, i32 3
  %52 = call i32 @DBF_HEX(i32* %51, i32 8)
  %53 = load %struct.qdio_irq*, %struct.qdio_irq** %4, align 8
  %54 = ptrtoint %struct.qdio_irq* %53 to i64
  %55 = call i32 (i8*, i64, ...) @DBF_EVENT(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i64 %54)
  %56 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  %57 = load %struct.qdio_initialize*, %struct.qdio_initialize** %3, align 8
  %58 = getelementptr inbounds %struct.qdio_initialize, %struct.qdio_initialize* %57, i32 0, i32 2
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = call i8* @dev_name(i32* %60)
  %62 = call i32 @snprintf(i8* %56, i32 20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* %61)
  %63 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  %64 = call i32 @debug_register(i8* %63, i32 2, i32 1, i32 16)
  %65 = load %struct.qdio_irq*, %struct.qdio_irq** %4, align 8
  %66 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  %67 = load %struct.qdio_irq*, %struct.qdio_irq** %4, align 8
  %68 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @debug_register_view(i32 %69, i32* @debug_hex_ascii_view)
  %71 = load %struct.qdio_irq*, %struct.qdio_irq** %4, align 8
  %72 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @DBF_WARN, align 4
  %75 = call i32 @debug_set_level(i32 %73, i32 %74)
  %76 = load i32, i32* @DBF_ERR, align 4
  %77 = load %struct.qdio_irq*, %struct.qdio_irq** %4, align 8
  %78 = call i32 @DBF_DEV_EVENT(i32 %76, %struct.qdio_irq* %77, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  ret void
}

declare dso_local i32 @DBF_EVENT(i8*, i64, ...) #1

declare dso_local i32 @DBF_HEX(i32*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i8* @dev_name(i32*) #1

declare dso_local i32 @debug_register(i8*, i32, i32, i32) #1

declare dso_local i32 @debug_register_view(i32, i32*) #1

declare dso_local i32 @debug_set_level(i32, i32) #1

declare dso_local i32 @DBF_DEV_EVENT(i32, %struct.qdio_irq*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
