; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_toshiba_acpi.c_hci_raw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_toshiba_acpi.c_hci_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_object_list = type { i32, %union.acpi_object* }
%union.acpi_object = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.acpi_buffer = type { i32, %union.acpi_object* }
%struct.TYPE_5__ = type { i32 }

@HCI_WORDS = common dso_local global i32 0, align 4
@ACPI_TYPE_INTEGER = common dso_local global i32 0, align 4
@method_hci = common dso_local global i64 0, align 8
@AE_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*)* @hci_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @hci_raw(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.acpi_object_list, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.acpi_buffer, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %12 = load i32, i32* @HCI_WORDS, align 4
  %13 = zext i32 %12 to i64
  %14 = load i32, i32* @HCI_WORDS, align 4
  %15 = zext i32 %14 to i64
  %16 = load i32, i32* @HCI_WORDS, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %6, align 8
  %19 = alloca %union.acpi_object, i64 %17, align 16
  store i64 %17, i64* %7, align 8
  %20 = load i32, i32* @HCI_WORDS, align 4
  %21 = add nsw i32 %20, 1
  %22 = zext i32 %21 to i64
  %23 = alloca %union.acpi_object, i64 %22, align 16
  store i64 %22, i64* %9, align 8
  %24 = load i32, i32* @HCI_WORDS, align 4
  %25 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %5, i32 0, i32 0
  store i32 %24, i32* %25, align 8
  %26 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %5, i32 0, i32 1
  store %union.acpi_object* %19, %union.acpi_object** %26, align 8
  store i32 0, i32* %11, align 4
  br label %27

27:                                               ; preds = %47, %2
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* @HCI_WORDS, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %50

31:                                               ; preds = %27
  %32 = load i32, i32* @ACPI_TYPE_INTEGER, align 4
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %19, i64 %34
  %36 = bitcast %union.acpi_object* %35 to i32*
  store i32 %32, i32* %36, align 16
  %37 = load i32*, i32** %3, align 8
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %19, i64 %43
  %45 = bitcast %union.acpi_object* %44 to %struct.TYPE_5__*
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  store i32 %41, i32* %46, align 16
  br label %47

47:                                               ; preds = %31
  %48 = load i32, i32* %11, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %11, align 4
  br label %27

50:                                               ; preds = %27
  %51 = mul nuw i64 16, %22
  %52 = trunc i64 %51 to i32
  %53 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %8, i32 0, i32 0
  store i32 %52, i32* %53, align 8
  %54 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %8, i32 0, i32 1
  store %union.acpi_object* %23, %union.acpi_object** %54, align 8
  %55 = load i64, i64* @method_hci, align 8
  %56 = inttoptr i64 %55 to i8*
  %57 = call i64 @acpi_evaluate_object(i32* null, i8* %56, %struct.acpi_object_list* %5, %struct.acpi_buffer* %8)
  store i64 %57, i64* %10, align 8
  %58 = load i64, i64* %10, align 8
  %59 = load i64, i64* @AE_OK, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %92

61:                                               ; preds = %50
  %62 = bitcast %union.acpi_object* %23 to %struct.TYPE_8__*
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 16
  %65 = load i32, i32* @HCI_WORDS, align 4
  %66 = icmp sle i32 %64, %65
  br i1 %66, label %67, label %92

67:                                               ; preds = %61
  store i32 0, i32* %11, align 4
  br label %68

68:                                               ; preds = %88, %67
  %69 = load i32, i32* %11, align 4
  %70 = bitcast %union.acpi_object* %23 to %struct.TYPE_8__*
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 16
  %73 = icmp slt i32 %69, %72
  br i1 %73, label %74, label %91

74:                                               ; preds = %68
  %75 = bitcast %union.acpi_object* %23 to %struct.TYPE_8__*
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %76, align 8
  %78 = load i32, i32* %11, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32*, i32** %4, align 8
  %85 = load i32, i32* %11, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  store i32 %83, i32* %87, align 4
  br label %88

88:                                               ; preds = %74
  %89 = load i32, i32* %11, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %11, align 4
  br label %68

91:                                               ; preds = %68
  br label %92

92:                                               ; preds = %91, %61, %50
  %93 = load i64, i64* %10, align 8
  %94 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %94)
  ret i64 %93
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @acpi_evaluate_object(i32*, i8*, %struct.acpi_object_list*, %struct.acpi_buffer*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
