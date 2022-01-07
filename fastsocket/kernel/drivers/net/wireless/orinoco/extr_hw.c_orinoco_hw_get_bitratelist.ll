; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/orinoco/extr_hw.c_orinoco_hw_get_bitratelist.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/orinoco/extr_hw.c_orinoco_hw_get_bitratelist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.orinoco_private = type { %struct.hermes }
%struct.hermes = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.hermes*, i32, i32, i32, i32*, %struct.hermes_idstring*)* }
%struct.hermes_idstring = type { i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@USER_BAP = common dso_local global i32 0, align 4
@HERMES_RID_SUPPORTEDDATARATES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @orinoco_hw_get_bitratelist(%struct.orinoco_private* %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.orinoco_private*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.hermes*, align 8
  %11 = alloca %struct.hermes_idstring, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.orinoco_private* %0, %struct.orinoco_private** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load %struct.orinoco_private*, %struct.orinoco_private** %6, align 8
  %18 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %17, i32 0, i32 0
  store %struct.hermes* %18, %struct.hermes** %10, align 8
  %19 = getelementptr inbounds %struct.hermes_idstring, %struct.hermes_idstring* %11, i32 0, i32 1
  %20 = bitcast i32* %19 to i8*
  store i8* %20, i8** %12, align 8
  store i32 0, i32* %13, align 4
  %21 = load %struct.orinoco_private*, %struct.orinoco_private** %6, align 8
  %22 = call i64 @orinoco_lock(%struct.orinoco_private* %21, i64* %16)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load i32, i32* @EBUSY, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %74

27:                                               ; preds = %4
  %28 = load %struct.hermes*, %struct.hermes** %10, align 8
  %29 = getelementptr inbounds %struct.hermes, %struct.hermes* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32 (%struct.hermes*, i32, i32, i32, i32*, %struct.hermes_idstring*)*, i32 (%struct.hermes*, i32, i32, i32, i32*, %struct.hermes_idstring*)** %31, align 8
  %33 = load %struct.hermes*, %struct.hermes** %10, align 8
  %34 = load i32, i32* @USER_BAP, align 4
  %35 = load i32, i32* @HERMES_RID_SUPPORTEDDATARATES, align 4
  %36 = call i32 %32(%struct.hermes* %33, i32 %34, i32 %35, i32 8, i32* null, %struct.hermes_idstring* %11)
  store i32 %36, i32* %13, align 4
  %37 = load %struct.orinoco_private*, %struct.orinoco_private** %6, align 8
  %38 = call i32 @orinoco_unlock(%struct.orinoco_private* %37, i64* %16)
  %39 = load i32, i32* %13, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %27
  %42 = load i32, i32* %13, align 4
  store i32 %42, i32* %5, align 4
  br label %74

43:                                               ; preds = %27
  %44 = getelementptr inbounds %struct.hermes_idstring, %struct.hermes_idstring* %11, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @le16_to_cpu(i32 %45)
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* %14, align 4
  %48 = load i32*, i32** %7, align 8
  store i32 %47, i32* %48, align 4
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @min(i32 %49, i32 %50)
  store i32 %51, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %52

52:                                               ; preds = %70, %43
  %53 = load i32, i32* %15, align 4
  %54 = load i32, i32* %14, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %73

56:                                               ; preds = %52
  %57 = load i8*, i8** %12, align 8
  %58 = load i32, i32* %15, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = zext i8 %61 to i32
  %63 = and i32 %62, 127
  %64 = mul nsw i32 %63, 500000
  %65 = trunc i32 %64 to i8
  %66 = load i8*, i8** %8, align 8
  %67 = load i32, i32* %15, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  store i8 %65, i8* %69, align 1
  br label %70

70:                                               ; preds = %56
  %71 = load i32, i32* %15, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %15, align 4
  br label %52

73:                                               ; preds = %52
  store i32 0, i32* %5, align 4
  br label %74

74:                                               ; preds = %73, %41, %24
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local i64 @orinoco_lock(%struct.orinoco_private*, i64*) #1

declare dso_local i32 @orinoco_unlock(%struct.orinoco_private*, i64*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
