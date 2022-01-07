; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_acpiphp_ibm.c_ibm_slot_from_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_acpiphp_ibm.c_ibm_slot_from_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.apci_descriptor = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"aPCI\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%union.apci_descriptor* (i32)* @ibm_slot_from_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %union.apci_descriptor* @ibm_slot_from_id(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %union.apci_descriptor*, align 8
  %6 = alloca %union.apci_descriptor*, align 8
  %7 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store %union.apci_descriptor* null, %union.apci_descriptor** %5, align 8
  %8 = call i32 @ibm_get_table_from_acpi(i8** %7)
  store i32 %8, i32* %4, align 4
  %9 = load i8*, i8** %7, align 8
  %10 = bitcast i8* %9 to %union.apci_descriptor*
  store %union.apci_descriptor* %10, %union.apci_descriptor** %6, align 8
  %11 = load %union.apci_descriptor*, %union.apci_descriptor** %6, align 8
  %12 = bitcast %union.apci_descriptor* %11 to %struct.TYPE_4__*
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @memcmp(i32 %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %79

18:                                               ; preds = %1
  %19 = load i8*, i8** %7, align 8
  %20 = load %union.apci_descriptor*, %union.apci_descriptor** %6, align 8
  %21 = bitcast %union.apci_descriptor* %20 to %struct.TYPE_4__*
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = add i64 %25, %23
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %19, i64 %28
  %30 = bitcast i8* %29 to %union.apci_descriptor*
  store %union.apci_descriptor* %30, %union.apci_descriptor** %6, align 8
  br label %31

31:                                               ; preds = %52, %18
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %50

35:                                               ; preds = %31
  %36 = load %union.apci_descriptor*, %union.apci_descriptor** %6, align 8
  %37 = bitcast %union.apci_descriptor* %36 to %struct.TYPE_5__*
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 130
  br i1 %40, label %48, label %41

41:                                               ; preds = %35
  %42 = load %union.apci_descriptor*, %union.apci_descriptor** %6, align 8
  %43 = bitcast %union.apci_descriptor* %42 to %struct.TYPE_6__*
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %2, align 4
  %47 = icmp ne i32 %45, %46
  br label %48

48:                                               ; preds = %41, %35
  %49 = phi i1 [ true, %35 ], [ %47, %41 ]
  br label %50

50:                                               ; preds = %48, %31
  %51 = phi i1 [ false, %31 ], [ %49, %48 ]
  br i1 %51, label %52, label %65

52:                                               ; preds = %50
  %53 = load i8*, i8** %7, align 8
  %54 = load %union.apci_descriptor*, %union.apci_descriptor** %6, align 8
  %55 = bitcast %union.apci_descriptor* %54 to %struct.TYPE_5__*
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i32, i32* %3, align 4
  %59 = sext i32 %58 to i64
  %60 = add i64 %59, %57
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %3, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %53, i64 %62
  %64 = bitcast i8* %63 to %union.apci_descriptor*
  store %union.apci_descriptor* %64, %union.apci_descriptor** %6, align 8
  br label %31

65:                                               ; preds = %50
  %66 = load i32, i32* %3, align 4
  %67 = load i32, i32* %4, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %78

69:                                               ; preds = %65
  %70 = load %union.apci_descriptor*, %union.apci_descriptor** %6, align 8
  %71 = bitcast %union.apci_descriptor* %70 to %struct.TYPE_6__*
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %2, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %69
  %77 = load %union.apci_descriptor*, %union.apci_descriptor** %6, align 8
  store %union.apci_descriptor* %77, %union.apci_descriptor** %5, align 8
  br label %78

78:                                               ; preds = %76, %69, %65
  br label %79

79:                                               ; preds = %78, %17
  %80 = load %union.apci_descriptor*, %union.apci_descriptor** %5, align 8
  %81 = icmp ne %union.apci_descriptor* %80, null
  br i1 %81, label %82, label %88

82:                                               ; preds = %79
  %83 = load i32, i32* @GFP_KERNEL, align 4
  %84 = call %union.apci_descriptor* @kmalloc(i32 16, i32 %83)
  store %union.apci_descriptor* %84, %union.apci_descriptor** %5, align 8
  %85 = load %union.apci_descriptor*, %union.apci_descriptor** %5, align 8
  %86 = load %union.apci_descriptor*, %union.apci_descriptor** %6, align 8
  %87 = call i32 @memcpy(%union.apci_descriptor* %85, %union.apci_descriptor* %86, i32 16)
  br label %88

88:                                               ; preds = %82, %79
  %89 = load i8*, i8** %7, align 8
  %90 = call i32 @kfree(i8* %89)
  %91 = load %union.apci_descriptor*, %union.apci_descriptor** %5, align 8
  ret %union.apci_descriptor* %91
}

declare dso_local i32 @ibm_get_table_from_acpi(i8**) #1

declare dso_local i64 @memcmp(i32, i8*, i32) #1

declare dso_local %union.apci_descriptor* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(%union.apci_descriptor*, %union.apci_descriptor*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
