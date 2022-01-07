; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/android/extr_ram_console.c_ram_console_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/android/extr_ram_console.c_ram_console_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ram_console_buffer = type { i32, i32 }
%struct.console = type { i32 }

@ram_console_buffer = common dso_local global %struct.ram_console_buffer* null, align 8
@ram_console_buffer_size = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.console*, i8*, i32)* @ram_console_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ram_console_write(%struct.console* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.console*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ram_console_buffer*, align 8
  store %struct.console* %0, %struct.console** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.ram_console_buffer*, %struct.ram_console_buffer** @ram_console_buffer, align 8
  store %struct.ram_console_buffer* %9, %struct.ram_console_buffer** %8, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @ram_console_buffer_size, align 4
  %12 = icmp ugt i32 %10, %11
  br i1 %12, label %13, label %21

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @ram_console_buffer_size, align 4
  %16 = sub i32 %14, %15
  %17 = load i8*, i8** %5, align 8
  %18 = zext i32 %16 to i64
  %19 = getelementptr inbounds i8, i8* %17, i64 %18
  store i8* %19, i8** %5, align 8
  %20 = load i32, i32* @ram_console_buffer_size, align 4
  store i32 %20, i32* %6, align 4
  br label %21

21:                                               ; preds = %13, %3
  %22 = load i32, i32* @ram_console_buffer_size, align 4
  %23 = load %struct.ram_console_buffer*, %struct.ram_console_buffer** %8, align 8
  %24 = getelementptr inbounds %struct.ram_console_buffer, %struct.ram_console_buffer* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sub i32 %22, %25
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %30, label %46

30:                                               ; preds = %21
  %31 = load i8*, i8** %5, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @ram_console_update(i8* %31, i32 %32)
  %34 = load i32, i32* %7, align 4
  %35 = load i8*, i8** %5, align 8
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  store i8* %37, i8** %5, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %6, align 4
  %40 = sub i32 %39, %38
  store i32 %40, i32* %6, align 4
  %41 = load %struct.ram_console_buffer*, %struct.ram_console_buffer** %8, align 8
  %42 = getelementptr inbounds %struct.ram_console_buffer, %struct.ram_console_buffer* %41, i32 0, i32 0
  store i32 0, i32* %42, align 4
  %43 = load i32, i32* @ram_console_buffer_size, align 4
  %44 = load %struct.ram_console_buffer*, %struct.ram_console_buffer** %8, align 8
  %45 = getelementptr inbounds %struct.ram_console_buffer, %struct.ram_console_buffer* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  br label %46

46:                                               ; preds = %30, %21
  %47 = load i8*, i8** %5, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @ram_console_update(i8* %47, i32 %48)
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.ram_console_buffer*, %struct.ram_console_buffer** %8, align 8
  %52 = getelementptr inbounds %struct.ram_console_buffer, %struct.ram_console_buffer* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = add i32 %53, %50
  store i32 %54, i32* %52, align 4
  %55 = load %struct.ram_console_buffer*, %struct.ram_console_buffer** %8, align 8
  %56 = getelementptr inbounds %struct.ram_console_buffer, %struct.ram_console_buffer* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @ram_console_buffer_size, align 4
  %59 = icmp ult i32 %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %46
  %61 = load i32, i32* %6, align 4
  %62 = load %struct.ram_console_buffer*, %struct.ram_console_buffer** %8, align 8
  %63 = getelementptr inbounds %struct.ram_console_buffer, %struct.ram_console_buffer* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = add i32 %64, %61
  store i32 %65, i32* %63, align 4
  br label %66

66:                                               ; preds = %60, %46
  %67 = call i32 (...) @ram_console_update_header()
  ret void
}

declare dso_local i32 @ram_console_update(i8*, i32) #1

declare dso_local i32 @ram_console_update_header(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
