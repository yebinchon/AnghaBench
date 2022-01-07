; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pnp/extr_card.c_pnp_request_card_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pnp/extr_card.c_pnp_request_card_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 (%struct.TYPE_8__*)* }
%struct.TYPE_8__ = type { i32* }
%struct.pnp_card_link = type { %struct.pnp_card_driver*, %struct.pnp_card* }
%struct.pnp_card_driver = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.pnp_card = type { %struct.list_head }
%struct.list_head = type { %struct.list_head* }
%struct.pnp_dev = type { %struct.pnp_card_link*, %struct.TYPE_8__, i32, %struct.TYPE_6__, %struct.pnp_card* }
%struct.TYPE_6__ = type { %struct.list_head* }

@pnp_bus_type = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pnp_dev* @pnp_request_card_device(%struct.pnp_card_link* %0, i8* %1, %struct.pnp_dev* %2) #0 {
  %4 = alloca %struct.pnp_dev*, align 8
  %5 = alloca %struct.pnp_card_link*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.pnp_dev*, align 8
  %8 = alloca %struct.list_head*, align 8
  %9 = alloca %struct.pnp_dev*, align 8
  %10 = alloca %struct.pnp_card_driver*, align 8
  %11 = alloca %struct.pnp_card*, align 8
  store %struct.pnp_card_link* %0, %struct.pnp_card_link** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.pnp_dev* %2, %struct.pnp_dev** %7, align 8
  %12 = load %struct.pnp_card_link*, %struct.pnp_card_link** %5, align 8
  %13 = icmp ne %struct.pnp_card_link* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i8*, i8** %6, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %14, %3
  store %struct.pnp_dev* null, %struct.pnp_dev** %4, align 8
  br label %100

18:                                               ; preds = %14
  %19 = load %struct.pnp_card_link*, %struct.pnp_card_link** %5, align 8
  %20 = getelementptr inbounds %struct.pnp_card_link, %struct.pnp_card_link* %19, i32 0, i32 1
  %21 = load %struct.pnp_card*, %struct.pnp_card** %20, align 8
  store %struct.pnp_card* %21, %struct.pnp_card** %11, align 8
  %22 = load %struct.pnp_card_link*, %struct.pnp_card_link** %5, align 8
  %23 = getelementptr inbounds %struct.pnp_card_link, %struct.pnp_card_link* %22, i32 0, i32 0
  %24 = load %struct.pnp_card_driver*, %struct.pnp_card_driver** %23, align 8
  store %struct.pnp_card_driver* %24, %struct.pnp_card_driver** %10, align 8
  %25 = load %struct.pnp_dev*, %struct.pnp_dev** %7, align 8
  %26 = icmp ne %struct.pnp_dev* %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %18
  %28 = load %struct.pnp_card*, %struct.pnp_card** %11, align 8
  %29 = getelementptr inbounds %struct.pnp_card, %struct.pnp_card* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.list_head, %struct.list_head* %29, i32 0, i32 0
  %31 = load %struct.list_head*, %struct.list_head** %30, align 8
  store %struct.list_head* %31, %struct.list_head** %8, align 8
  br label %44

32:                                               ; preds = %18
  %33 = load %struct.pnp_dev*, %struct.pnp_dev** %7, align 8
  %34 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %33, i32 0, i32 4
  %35 = load %struct.pnp_card*, %struct.pnp_card** %34, align 8
  %36 = load %struct.pnp_card*, %struct.pnp_card** %11, align 8
  %37 = icmp ne %struct.pnp_card* %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store %struct.pnp_dev* null, %struct.pnp_dev** %4, align 8
  br label %100

39:                                               ; preds = %32
  %40 = load %struct.pnp_dev*, %struct.pnp_dev** %7, align 8
  %41 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load %struct.list_head*, %struct.list_head** %42, align 8
  store %struct.list_head* %43, %struct.list_head** %8, align 8
  br label %44

44:                                               ; preds = %39, %27
  br label %45

45:                                               ; preds = %65, %44
  %46 = load %struct.list_head*, %struct.list_head** %8, align 8
  %47 = load %struct.pnp_card*, %struct.pnp_card** %11, align 8
  %48 = getelementptr inbounds %struct.pnp_card, %struct.pnp_card* %47, i32 0, i32 0
  %49 = icmp ne %struct.list_head* %46, %48
  br i1 %49, label %50, label %69

50:                                               ; preds = %45
  %51 = load %struct.list_head*, %struct.list_head** %8, align 8
  %52 = call %struct.pnp_dev* @card_to_pnp_dev(%struct.list_head* %51)
  store %struct.pnp_dev* %52, %struct.pnp_dev** %9, align 8
  %53 = load %struct.pnp_dev*, %struct.pnp_dev** %9, align 8
  %54 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %53, i32 0, i32 0
  %55 = load %struct.pnp_card_link*, %struct.pnp_card_link** %54, align 8
  %56 = icmp ne %struct.pnp_card_link* %55, null
  br i1 %56, label %65, label %57

57:                                               ; preds = %50
  %58 = load %struct.pnp_dev*, %struct.pnp_dev** %9, align 8
  %59 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load i8*, i8** %6, align 8
  %62 = call i64 @compare_pnp_id(i32 %60, i8* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  br label %70

65:                                               ; preds = %57, %50
  %66 = load %struct.list_head*, %struct.list_head** %8, align 8
  %67 = getelementptr inbounds %struct.list_head, %struct.list_head* %66, i32 0, i32 0
  %68 = load %struct.list_head*, %struct.list_head** %67, align 8
  store %struct.list_head* %68, %struct.list_head** %8, align 8
  br label %45

69:                                               ; preds = %45
  store %struct.pnp_dev* null, %struct.pnp_dev** %4, align 8
  br label %100

70:                                               ; preds = %64
  %71 = load %struct.pnp_card_link*, %struct.pnp_card_link** %5, align 8
  %72 = load %struct.pnp_dev*, %struct.pnp_dev** %9, align 8
  %73 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %72, i32 0, i32 0
  store %struct.pnp_card_link* %71, %struct.pnp_card_link** %73, align 8
  %74 = load %struct.pnp_card_driver*, %struct.pnp_card_driver** %10, align 8
  %75 = getelementptr inbounds %struct.pnp_card_driver, %struct.pnp_card_driver* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load %struct.pnp_dev*, %struct.pnp_dev** %9, align 8
  %78 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  store i32* %76, i32** %79, align 8
  %80 = load i64 (%struct.TYPE_8__*)*, i64 (%struct.TYPE_8__*)** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @pnp_bus_type, i32 0, i32 0), align 8
  %81 = load %struct.pnp_dev*, %struct.pnp_dev** %9, align 8
  %82 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %81, i32 0, i32 1
  %83 = call i64 %80(%struct.TYPE_8__* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %70
  br label %94

86:                                               ; preds = %70
  %87 = load %struct.pnp_dev*, %struct.pnp_dev** %9, align 8
  %88 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %87, i32 0, i32 1
  %89 = call i64 @device_bind_driver(%struct.TYPE_8__* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  br label %94

92:                                               ; preds = %86
  %93 = load %struct.pnp_dev*, %struct.pnp_dev** %9, align 8
  store %struct.pnp_dev* %93, %struct.pnp_dev** %4, align 8
  br label %100

94:                                               ; preds = %91, %85
  %95 = load %struct.pnp_dev*, %struct.pnp_dev** %9, align 8
  %96 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  store i32* null, i32** %97, align 8
  %98 = load %struct.pnp_dev*, %struct.pnp_dev** %9, align 8
  %99 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %98, i32 0, i32 0
  store %struct.pnp_card_link* null, %struct.pnp_card_link** %99, align 8
  store %struct.pnp_dev* null, %struct.pnp_dev** %4, align 8
  br label %100

100:                                              ; preds = %94, %92, %69, %38, %17
  %101 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  ret %struct.pnp_dev* %101
}

declare dso_local %struct.pnp_dev* @card_to_pnp_dev(%struct.list_head*) #1

declare dso_local i64 @compare_pnp_id(i32, i8*) #1

declare dso_local i64 @device_bind_driver(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
