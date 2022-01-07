; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_virtio_console.c_fill_readbuf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_virtio_console.c_fill_readbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port = type { i32, i32, i32, %struct.port_buffer* }
%struct.port_buffer = type { i64, i64, i64 }

@EFAULT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"failed add_buf\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.port*, i8*, i64, i32)* @fill_readbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fill_readbuf(%struct.port* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.port*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.port_buffer*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.port* %0, %struct.port** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i64, i64* %8, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %4
  %16 = load %struct.port*, %struct.port** %6, align 8
  %17 = call i32 @port_has_data(%struct.port* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15, %4
  store i64 0, i64* %5, align 8
  br label %101

20:                                               ; preds = %15
  %21 = load %struct.port*, %struct.port** %6, align 8
  %22 = getelementptr inbounds %struct.port, %struct.port* %21, i32 0, i32 3
  %23 = load %struct.port_buffer*, %struct.port_buffer** %22, align 8
  store %struct.port_buffer* %23, %struct.port_buffer** %10, align 8
  %24 = load i64, i64* %8, align 8
  %25 = load %struct.port_buffer*, %struct.port_buffer** %10, align 8
  %26 = getelementptr inbounds %struct.port_buffer, %struct.port_buffer* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.port_buffer*, %struct.port_buffer** %10, align 8
  %29 = getelementptr inbounds %struct.port_buffer, %struct.port_buffer* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = sub nsw i64 %27, %30
  %32 = call i64 @min(i64 %24, i64 %31)
  store i64 %32, i64* %8, align 8
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %52

35:                                               ; preds = %20
  %36 = load i8*, i8** %7, align 8
  %37 = load %struct.port_buffer*, %struct.port_buffer** %10, align 8
  %38 = getelementptr inbounds %struct.port_buffer, %struct.port_buffer* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.port_buffer*, %struct.port_buffer** %10, align 8
  %41 = getelementptr inbounds %struct.port_buffer, %struct.port_buffer* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %39, %42
  %44 = load i64, i64* %8, align 8
  %45 = call i64 @copy_to_user(i8* %36, i64 %43, i64 %44)
  store i64 %45, i64* %12, align 8
  %46 = load i64, i64* %12, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %35
  %49 = load i64, i64* @EFAULT, align 8
  %50 = sub i64 0, %49
  store i64 %50, i64* %5, align 8
  br label %101

51:                                               ; preds = %35
  br label %63

52:                                               ; preds = %20
  %53 = load i8*, i8** %7, align 8
  %54 = load %struct.port_buffer*, %struct.port_buffer** %10, align 8
  %55 = getelementptr inbounds %struct.port_buffer, %struct.port_buffer* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.port_buffer*, %struct.port_buffer** %10, align 8
  %58 = getelementptr inbounds %struct.port_buffer, %struct.port_buffer* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %56, %59
  %61 = load i64, i64* %8, align 8
  %62 = call i32 @memcpy(i8* %53, i64 %60, i64 %61)
  br label %63

63:                                               ; preds = %52, %51
  %64 = load i64, i64* %8, align 8
  %65 = load %struct.port_buffer*, %struct.port_buffer** %10, align 8
  %66 = getelementptr inbounds %struct.port_buffer, %struct.port_buffer* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = add i64 %67, %64
  store i64 %68, i64* %66, align 8
  %69 = load %struct.port_buffer*, %struct.port_buffer** %10, align 8
  %70 = getelementptr inbounds %struct.port_buffer, %struct.port_buffer* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.port_buffer*, %struct.port_buffer** %10, align 8
  %73 = getelementptr inbounds %struct.port_buffer, %struct.port_buffer* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %71, %74
  br i1 %75, label %76, label %99

76:                                               ; preds = %63
  %77 = load %struct.port*, %struct.port** %6, align 8
  %78 = getelementptr inbounds %struct.port, %struct.port* %77, i32 0, i32 0
  %79 = load i64, i64* %11, align 8
  %80 = call i32 @spin_lock_irqsave(i32* %78, i64 %79)
  %81 = load %struct.port*, %struct.port** %6, align 8
  %82 = getelementptr inbounds %struct.port, %struct.port* %81, i32 0, i32 3
  store %struct.port_buffer* null, %struct.port_buffer** %82, align 8
  %83 = load %struct.port*, %struct.port** %6, align 8
  %84 = getelementptr inbounds %struct.port, %struct.port* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.port_buffer*, %struct.port_buffer** %10, align 8
  %87 = call i64 @add_inbuf(i32 %85, %struct.port_buffer* %86)
  %88 = icmp slt i64 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %76
  %90 = load %struct.port*, %struct.port** %6, align 8
  %91 = getelementptr inbounds %struct.port, %struct.port* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @dev_warn(i32 %92, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %94

94:                                               ; preds = %89, %76
  %95 = load %struct.port*, %struct.port** %6, align 8
  %96 = getelementptr inbounds %struct.port, %struct.port* %95, i32 0, i32 0
  %97 = load i64, i64* %11, align 8
  %98 = call i32 @spin_unlock_irqrestore(i32* %96, i64 %97)
  br label %99

99:                                               ; preds = %94, %63
  %100 = load i64, i64* %8, align 8
  store i64 %100, i64* %5, align 8
  br label %101

101:                                              ; preds = %99, %48, %19
  %102 = load i64, i64* %5, align 8
  ret i64 %102
}

declare dso_local i32 @port_has_data(%struct.port*) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i64 @copy_to_user(i8*, i64, i64) #1

declare dso_local i32 @memcpy(i8*, i64, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @add_inbuf(i32, %struct.port_buffer*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
