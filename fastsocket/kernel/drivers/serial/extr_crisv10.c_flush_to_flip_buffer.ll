; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_crisv10.c_flush_to_flip_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_crisv10.c_flush_to_flip_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e100_serial = type { i32, i32*, %struct.etrax_recv_buffer*, %struct.TYPE_2__ }
%struct.etrax_recv_buffer = type { i32, i32, i64, %struct.etrax_recv_buffer* }
%struct.TYPE_2__ = type { %struct.tty_struct* }
%struct.tty_struct = type { i32 }

@TTY_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e100_serial*)* @flush_to_flip_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_to_flip_buffer(%struct.e100_serial* %0) #0 {
  %2 = alloca %struct.e100_serial*, align 8
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.etrax_recv_buffer*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.e100_serial* %0, %struct.e100_serial** %2, align 8
  %7 = load i64, i64* %5, align 8
  %8 = call i32 @local_irq_save(i64 %7)
  %9 = load %struct.e100_serial*, %struct.e100_serial** %2, align 8
  %10 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.tty_struct*, %struct.tty_struct** %11, align 8
  store %struct.tty_struct* %12, %struct.tty_struct** %3, align 8
  %13 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %14 = icmp ne %struct.tty_struct* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @local_irq_restore(i64 %16)
  br label %88

18:                                               ; preds = %1
  br label %19

19:                                               ; preds = %74, %18
  %20 = load %struct.e100_serial*, %struct.e100_serial** %2, align 8
  %21 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %20, i32 0, i32 2
  %22 = load %struct.etrax_recv_buffer*, %struct.etrax_recv_buffer** %21, align 8
  store %struct.etrax_recv_buffer* %22, %struct.etrax_recv_buffer** %4, align 8
  %23 = icmp ne %struct.etrax_recv_buffer* %22, null
  br i1 %23, label %24, label %75

24:                                               ; preds = %19
  %25 = load %struct.etrax_recv_buffer*, %struct.etrax_recv_buffer** %4, align 8
  %26 = getelementptr inbounds %struct.etrax_recv_buffer, %struct.etrax_recv_buffer* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %6, align 4
  %28 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %29 = load %struct.etrax_recv_buffer*, %struct.etrax_recv_buffer** %4, align 8
  %30 = getelementptr inbounds %struct.etrax_recv_buffer, %struct.etrax_recv_buffer* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @tty_insert_flip_string(%struct.tty_struct* %28, i64 %31, i32 %32)
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.e100_serial*, %struct.e100_serial** %2, align 8
  %36 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sub i32 %37, %34
  store i32 %38, i32* %36, align 8
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.etrax_recv_buffer*, %struct.etrax_recv_buffer** %4, align 8
  %41 = getelementptr inbounds %struct.etrax_recv_buffer, %struct.etrax_recv_buffer* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp eq i32 %39, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %24
  %45 = load %struct.etrax_recv_buffer*, %struct.etrax_recv_buffer** %4, align 8
  %46 = getelementptr inbounds %struct.etrax_recv_buffer, %struct.etrax_recv_buffer* %45, i32 0, i32 3
  %47 = load %struct.etrax_recv_buffer*, %struct.etrax_recv_buffer** %46, align 8
  %48 = load %struct.e100_serial*, %struct.e100_serial** %2, align 8
  %49 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %48, i32 0, i32 2
  store %struct.etrax_recv_buffer* %47, %struct.etrax_recv_buffer** %49, align 8
  %50 = load %struct.etrax_recv_buffer*, %struct.etrax_recv_buffer** %4, align 8
  %51 = call i32 @kfree(%struct.etrax_recv_buffer* %50)
  br label %74

52:                                               ; preds = %24
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.etrax_recv_buffer*, %struct.etrax_recv_buffer** %4, align 8
  %55 = getelementptr inbounds %struct.etrax_recv_buffer, %struct.etrax_recv_buffer* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = sub i32 %56, %53
  store i32 %57, i32* %55, align 8
  %58 = load %struct.etrax_recv_buffer*, %struct.etrax_recv_buffer** %4, align 8
  %59 = getelementptr inbounds %struct.etrax_recv_buffer, %struct.etrax_recv_buffer* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.etrax_recv_buffer*, %struct.etrax_recv_buffer** %4, align 8
  %62 = getelementptr inbounds %struct.etrax_recv_buffer, %struct.etrax_recv_buffer* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = zext i32 %64 to i64
  %66 = add nsw i64 %63, %65
  %67 = load %struct.etrax_recv_buffer*, %struct.etrax_recv_buffer** %4, align 8
  %68 = getelementptr inbounds %struct.etrax_recv_buffer, %struct.etrax_recv_buffer* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @memmove(i64 %60, i64 %66, i32 %69)
  %71 = load i32, i32* @TTY_NORMAL, align 4
  %72 = load %struct.etrax_recv_buffer*, %struct.etrax_recv_buffer** %4, align 8
  %73 = getelementptr inbounds %struct.etrax_recv_buffer, %struct.etrax_recv_buffer* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  br label %74

74:                                               ; preds = %52, %44
  br label %19

75:                                               ; preds = %19
  %76 = load %struct.e100_serial*, %struct.e100_serial** %2, align 8
  %77 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %76, i32 0, i32 2
  %78 = load %struct.etrax_recv_buffer*, %struct.etrax_recv_buffer** %77, align 8
  %79 = icmp ne %struct.etrax_recv_buffer* %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %75
  %81 = load %struct.e100_serial*, %struct.e100_serial** %2, align 8
  %82 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %81, i32 0, i32 1
  store i32* null, i32** %82, align 8
  br label %83

83:                                               ; preds = %80, %75
  %84 = load i64, i64* %5, align 8
  %85 = call i32 @local_irq_restore(i64 %84)
  %86 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %87 = call i32 @tty_flip_buffer_push(%struct.tty_struct* %86)
  br label %88

88:                                               ; preds = %83, %15
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @tty_insert_flip_string(%struct.tty_struct*, i64, i32) #1

declare dso_local i32 @kfree(%struct.etrax_recv_buffer*) #1

declare dso_local i32 @memmove(i64, i64, i32) #1

declare dso_local i32 @tty_flip_buffer_push(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
