; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_ohci.c_context_append.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_ohci.c_context_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { i32, i32, %struct.TYPE_2__*, %struct.descriptor_buffer* }
%struct.TYPE_2__ = type { i32 }
%struct.descriptor_buffer = type { i32, i32, %struct.descriptor* }
%struct.descriptor = type { i32 }

@CONTEXT_WAKE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.context*, %struct.descriptor*, i32, i32)* @context_append to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @context_append(%struct.context* %0, %struct.descriptor* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.context*, align 8
  %6 = alloca %struct.descriptor*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.descriptor_buffer*, align 8
  store %struct.context* %0, %struct.context** %5, align 8
  store %struct.descriptor* %1, %struct.descriptor** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.context*, %struct.context** %5, align 8
  %12 = getelementptr inbounds %struct.context, %struct.context* %11, i32 0, i32 3
  %13 = load %struct.descriptor_buffer*, %struct.descriptor_buffer** %12, align 8
  store %struct.descriptor_buffer* %13, %struct.descriptor_buffer** %10, align 8
  %14 = load %struct.descriptor_buffer*, %struct.descriptor_buffer** %10, align 8
  %15 = getelementptr inbounds %struct.descriptor_buffer, %struct.descriptor_buffer* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sext i32 %16 to i64
  %18 = load %struct.descriptor*, %struct.descriptor** %6, align 8
  %19 = load %struct.descriptor_buffer*, %struct.descriptor_buffer** %10, align 8
  %20 = getelementptr inbounds %struct.descriptor_buffer, %struct.descriptor_buffer* %19, i32 0, i32 2
  %21 = load %struct.descriptor*, %struct.descriptor** %20, align 8
  %22 = ptrtoint %struct.descriptor* %18 to i64
  %23 = ptrtoint %struct.descriptor* %21 to i64
  %24 = sub i64 %22, %23
  %25 = sdiv exact i64 %24, 4
  %26 = mul i64 %25, 4
  %27 = add i64 %17, %26
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %8, align 4
  %31 = add nsw i32 %29, %30
  %32 = sext i32 %31 to i64
  %33 = mul i64 %32, 4
  %34 = load %struct.descriptor_buffer*, %struct.descriptor_buffer** %10, align 8
  %35 = getelementptr inbounds %struct.descriptor_buffer, %struct.descriptor_buffer* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = add i64 %37, %33
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %35, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %7, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @cpu_to_le32(i32 %42)
  %44 = load %struct.context*, %struct.context** %5, align 8
  %45 = getelementptr inbounds %struct.context, %struct.context* %44, i32 0, i32 2
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i32 %43, i32* %47, align 4
  %48 = load %struct.descriptor*, %struct.descriptor** %6, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call %struct.TYPE_2__* @find_branch_descriptor(%struct.descriptor* %48, i32 %49)
  %51 = load %struct.context*, %struct.context** %5, align 8
  %52 = getelementptr inbounds %struct.context, %struct.context* %51, i32 0, i32 2
  store %struct.TYPE_2__* %50, %struct.TYPE_2__** %52, align 8
  %53 = load %struct.context*, %struct.context** %5, align 8
  %54 = getelementptr inbounds %struct.context, %struct.context* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.context*, %struct.context** %5, align 8
  %57 = getelementptr inbounds %struct.context, %struct.context* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @CONTROL_SET(i32 %58)
  %60 = load i32, i32* @CONTEXT_WAKE, align 4
  %61 = call i32 @reg_write(i32 %55, i32 %59, i32 %60)
  %62 = load %struct.context*, %struct.context** %5, align 8
  %63 = getelementptr inbounds %struct.context, %struct.context* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @flush_writes(i32 %64)
  ret void
}

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local %struct.TYPE_2__* @find_branch_descriptor(%struct.descriptor*, i32) #1

declare dso_local i32 @reg_write(i32, i32, i32) #1

declare dso_local i32 @CONTROL_SET(i32) #1

declare dso_local i32 @flush_writes(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
