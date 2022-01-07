; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_psargs.c_acpi_ps_get_next_namestring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_psargs.c_acpi_ps_get_next_namestring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_parse_state = type { i32* }

@ps_get_next_namestring = common dso_local global i32 0, align 4
@ACPI_NAME_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @acpi_ps_get_next_namestring(%struct.acpi_parse_state* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.acpi_parse_state*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store %struct.acpi_parse_state* %0, %struct.acpi_parse_state** %3, align 8
  %6 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %3, align 8
  %7 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  store i32* %8, i32** %4, align 8
  %9 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %3, align 8
  %10 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %5, align 8
  %12 = load i32, i32* @ps_get_next_namestring, align 4
  %13 = call i32 @ACPI_FUNCTION_TRACE(i32 %12)
  br label %14

14:                                               ; preds = %19, %1
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @acpi_ps_is_prefix_char(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i32*, i32** %5, align 8
  %21 = getelementptr inbounds i32, i32* %20, i32 1
  store i32* %21, i32** %5, align 8
  br label %14

22:                                               ; preds = %14
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %50 [
    i32 0, label %25
    i32 129, label %33
    i32 128, label %40
  ]

25:                                               ; preds = %22
  %26 = load i32*, i32** %5, align 8
  %27 = load i32*, i32** %4, align 8
  %28 = icmp eq i32* %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32* null, i32** %4, align 8
  br label %30

30:                                               ; preds = %29, %25
  %31 = load i32*, i32** %5, align 8
  %32 = getelementptr inbounds i32, i32* %31, i32 1
  store i32* %32, i32** %5, align 8
  br label %55

33:                                               ; preds = %22
  %34 = load i32, i32* @ACPI_NAME_SIZE, align 4
  %35 = mul nsw i32 2, %34
  %36 = add nsw i32 1, %35
  %37 = load i32*, i32** %5, align 8
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  store i32* %39, i32** %5, align 8
  br label %55

40:                                               ; preds = %22
  %41 = load i32*, i32** %5, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @ACPI_NAME_SIZE, align 4
  %45 = mul nsw i32 %43, %44
  %46 = add nsw i32 2, %45
  %47 = load i32*, i32** %5, align 8
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  store i32* %49, i32** %5, align 8
  br label %55

50:                                               ; preds = %22
  %51 = load i32, i32* @ACPI_NAME_SIZE, align 4
  %52 = load i32*, i32** %5, align 8
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  store i32* %54, i32** %5, align 8
  br label %55

55:                                               ; preds = %50, %40, %33, %30
  %56 = load i32*, i32** %5, align 8
  %57 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %3, align 8
  %58 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %57, i32 0, i32 0
  store i32* %56, i32** %58, align 8
  %59 = load i32*, i32** %4, align 8
  %60 = bitcast i32* %59 to i8*
  %61 = call i32 @return_PTR(i8* %60)
  %62 = load i8*, i8** %2, align 8
  ret i8* %62
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i64 @acpi_ps_is_prefix_char(i32) #1

declare dso_local i32 @return_PTR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
