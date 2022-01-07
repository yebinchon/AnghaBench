; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_s3cmci.c_pio_tasklet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_s3cmci.c_pio_tasklet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3cmci_host = type { i64, i64, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@XFER_WRITE = common dso_local global i64 0, align 8
@XFER_READ = common dso_local global i64 0, align 8
@COMPLETION_FINALIZE = common dso_local global i64 0, align 8
@XFER_NONE = common dso_local global i64 0, align 8
@dbg_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"unfinished %s - pio_count:[%u] pio_bytes:[%u]\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @pio_tasklet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pio_tasklet(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.s3cmci_host*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = inttoptr i64 %4 to %struct.s3cmci_host*
  store %struct.s3cmci_host* %5, %struct.s3cmci_host** %3, align 8
  %6 = load %struct.s3cmci_host*, %struct.s3cmci_host** %3, align 8
  %7 = call i32 @s3cmci_disable_irq(%struct.s3cmci_host* %6, i32 1)
  %8 = load %struct.s3cmci_host*, %struct.s3cmci_host** %3, align 8
  %9 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @XFER_WRITE, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.s3cmci_host*, %struct.s3cmci_host** %3, align 8
  %15 = call i32 @do_pio_write(%struct.s3cmci_host* %14)
  br label %16

16:                                               ; preds = %13, %1
  %17 = load %struct.s3cmci_host*, %struct.s3cmci_host** %3, align 8
  %18 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @XFER_READ, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load %struct.s3cmci_host*, %struct.s3cmci_host** %3, align 8
  %24 = call i32 @do_pio_read(%struct.s3cmci_host* %23)
  br label %25

25:                                               ; preds = %22, %16
  %26 = load %struct.s3cmci_host*, %struct.s3cmci_host** %3, align 8
  %27 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @COMPLETION_FINALIZE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %77

31:                                               ; preds = %25
  %32 = load %struct.s3cmci_host*, %struct.s3cmci_host** %3, align 8
  %33 = call i32 @clear_imask(%struct.s3cmci_host* %32)
  %34 = load %struct.s3cmci_host*, %struct.s3cmci_host** %3, align 8
  %35 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @XFER_NONE, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %72

39:                                               ; preds = %31
  %40 = load %struct.s3cmci_host*, %struct.s3cmci_host** %3, align 8
  %41 = load i32, i32* @dbg_err, align 4
  %42 = load %struct.s3cmci_host*, %struct.s3cmci_host** %3, align 8
  %43 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @XFER_READ, align 8
  %46 = icmp eq i64 %44, %45
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %49 = load %struct.s3cmci_host*, %struct.s3cmci_host** %3, align 8
  %50 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.s3cmci_host*, %struct.s3cmci_host** %3, align 8
  %53 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @dbg(%struct.s3cmci_host* %40, i32 %41, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i8* %48, i32 %51, i32 %54)
  %56 = load %struct.s3cmci_host*, %struct.s3cmci_host** %3, align 8
  %57 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %56, i32 0, i32 2
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = icmp ne %struct.TYPE_3__* %60, null
  br i1 %61, label %62, label %71

62:                                               ; preds = %39
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  %65 = load %struct.s3cmci_host*, %struct.s3cmci_host** %3, align 8
  %66 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %65, i32 0, i32 2
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  store i32 %64, i32* %70, align 4
  br label %71

71:                                               ; preds = %62, %39
  br label %72

72:                                               ; preds = %71, %31
  %73 = load %struct.s3cmci_host*, %struct.s3cmci_host** %3, align 8
  %74 = call i32 @s3cmci_enable_irq(%struct.s3cmci_host* %73, i32 0)
  %75 = load %struct.s3cmci_host*, %struct.s3cmci_host** %3, align 8
  %76 = call i32 @finalize_request(%struct.s3cmci_host* %75)
  br label %80

77:                                               ; preds = %25
  %78 = load %struct.s3cmci_host*, %struct.s3cmci_host** %3, align 8
  %79 = call i32 @s3cmci_enable_irq(%struct.s3cmci_host* %78, i32 1)
  br label %80

80:                                               ; preds = %77, %72
  ret void
}

declare dso_local i32 @s3cmci_disable_irq(%struct.s3cmci_host*, i32) #1

declare dso_local i32 @do_pio_write(%struct.s3cmci_host*) #1

declare dso_local i32 @do_pio_read(%struct.s3cmci_host*) #1

declare dso_local i32 @clear_imask(%struct.s3cmci_host*) #1

declare dso_local i32 @dbg(%struct.s3cmci_host*, i32, i8*, i8*, i32, i32) #1

declare dso_local i32 @s3cmci_enable_irq(%struct.s3cmci_host*, i32) #1

declare dso_local i32 @finalize_request(%struct.s3cmci_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
