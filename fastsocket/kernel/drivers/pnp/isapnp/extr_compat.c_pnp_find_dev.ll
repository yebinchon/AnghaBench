; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pnp/isapnp/extr_compat.c_pnp_find_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pnp/isapnp/extr_compat.c_pnp_find_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { %struct.list_head* }
%struct.pnp_card = type { %struct.list_head }
%struct.pnp_dev = type { i32, %struct.pnp_card*, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.list_head* }
%struct.TYPE_3__ = type { %struct.list_head* }

@ISAPNP_ANY_ID = common dso_local global i16 0, align 2
@pnp_global = common dso_local global %struct.list_head zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pnp_dev* @pnp_find_dev(%struct.pnp_card* %0, i16 zeroext %1, i16 zeroext %2, %struct.pnp_dev* %3) #0 {
  %5 = alloca %struct.pnp_dev*, align 8
  %6 = alloca %struct.pnp_card*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca %struct.pnp_dev*, align 8
  %10 = alloca [8 x i8], align 1
  %11 = alloca [8 x i8], align 1
  %12 = alloca %struct.list_head*, align 8
  %13 = alloca %struct.pnp_dev*, align 8
  %14 = alloca %struct.list_head*, align 8
  %15 = alloca %struct.pnp_dev*, align 8
  store %struct.pnp_card* %0, %struct.pnp_card** %6, align 8
  store i16 %1, i16* %7, align 2
  store i16 %2, i16* %8, align 2
  store %struct.pnp_dev* %3, %struct.pnp_dev** %9, align 8
  %16 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 0
  %17 = load i16, i16* %7, align 2
  %18 = load i16, i16* %8, align 2
  %19 = call i32 @pnp_convert_id(i8* %16, i16 zeroext %17, i16 zeroext %18)
  %20 = getelementptr inbounds [8 x i8], [8 x i8]* %11, i64 0, i64 0
  %21 = load i16, i16* @ISAPNP_ANY_ID, align 2
  %22 = load i16, i16* @ISAPNP_ANY_ID, align 2
  %23 = call i32 @pnp_convert_id(i8* %20, i16 zeroext %21, i16 zeroext %22)
  %24 = load %struct.pnp_card*, %struct.pnp_card** %6, align 8
  %25 = icmp eq %struct.pnp_card* %24, null
  br i1 %25, label %26, label %60

26:                                               ; preds = %4
  %27 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @pnp_global, i32 0, i32 0), align 8
  store %struct.list_head* %27, %struct.list_head** %12, align 8
  %28 = load %struct.pnp_dev*, %struct.pnp_dev** %9, align 8
  %29 = icmp ne %struct.pnp_dev* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load %struct.pnp_dev*, %struct.pnp_dev** %9, align 8
  %32 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load %struct.list_head*, %struct.list_head** %33, align 8
  store %struct.list_head* %34, %struct.list_head** %12, align 8
  br label %35

35:                                               ; preds = %30, %26
  br label %36

36:                                               ; preds = %55, %35
  %37 = load %struct.list_head*, %struct.list_head** %12, align 8
  %38 = icmp ne %struct.list_head* %37, @pnp_global
  br i1 %38, label %39, label %59

39:                                               ; preds = %36
  %40 = load %struct.list_head*, %struct.list_head** %12, align 8
  %41 = call %struct.pnp_dev* @global_to_pnp_dev(%struct.list_head* %40)
  store %struct.pnp_dev* %41, %struct.pnp_dev** %13, align 8
  %42 = load %struct.pnp_dev*, %struct.pnp_dev** %13, align 8
  %43 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 0
  %46 = call i64 @compare_pnp_id(i32 %44, i8* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %39
  %49 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 0
  %50 = getelementptr inbounds [8 x i8], [8 x i8]* %11, i64 0, i64 0
  %51 = call i64 @memcmp(i8* %49, i8* %50, i32 7)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48, %39
  %54 = load %struct.pnp_dev*, %struct.pnp_dev** %13, align 8
  store %struct.pnp_dev* %54, %struct.pnp_dev** %5, align 8
  br label %102

55:                                               ; preds = %48
  %56 = load %struct.list_head*, %struct.list_head** %12, align 8
  %57 = getelementptr inbounds %struct.list_head, %struct.list_head* %56, i32 0, i32 0
  %58 = load %struct.list_head*, %struct.list_head** %57, align 8
  store %struct.list_head* %58, %struct.list_head** %12, align 8
  br label %36

59:                                               ; preds = %36
  br label %101

60:                                               ; preds = %4
  %61 = load %struct.pnp_card*, %struct.pnp_card** %6, align 8
  %62 = getelementptr inbounds %struct.pnp_card, %struct.pnp_card* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.list_head, %struct.list_head* %62, i32 0, i32 0
  %64 = load %struct.list_head*, %struct.list_head** %63, align 8
  store %struct.list_head* %64, %struct.list_head** %14, align 8
  %65 = load %struct.pnp_dev*, %struct.pnp_dev** %9, align 8
  %66 = icmp ne %struct.pnp_dev* %65, null
  br i1 %66, label %67, label %79

67:                                               ; preds = %60
  %68 = load %struct.pnp_dev*, %struct.pnp_dev** %9, align 8
  %69 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load %struct.list_head*, %struct.list_head** %70, align 8
  store %struct.list_head* %71, %struct.list_head** %14, align 8
  %72 = load %struct.pnp_dev*, %struct.pnp_dev** %9, align 8
  %73 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %72, i32 0, i32 1
  %74 = load %struct.pnp_card*, %struct.pnp_card** %73, align 8
  %75 = load %struct.pnp_card*, %struct.pnp_card** %6, align 8
  %76 = icmp ne %struct.pnp_card* %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %67
  store %struct.pnp_dev* null, %struct.pnp_dev** %5, align 8
  br label %102

78:                                               ; preds = %67
  br label %79

79:                                               ; preds = %78, %60
  br label %80

80:                                               ; preds = %96, %79
  %81 = load %struct.list_head*, %struct.list_head** %14, align 8
  %82 = load %struct.pnp_card*, %struct.pnp_card** %6, align 8
  %83 = getelementptr inbounds %struct.pnp_card, %struct.pnp_card* %82, i32 0, i32 0
  %84 = icmp ne %struct.list_head* %81, %83
  br i1 %84, label %85, label %100

85:                                               ; preds = %80
  %86 = load %struct.list_head*, %struct.list_head** %14, align 8
  %87 = call %struct.pnp_dev* @card_to_pnp_dev(%struct.list_head* %86)
  store %struct.pnp_dev* %87, %struct.pnp_dev** %15, align 8
  %88 = load %struct.pnp_dev*, %struct.pnp_dev** %15, align 8
  %89 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 0
  %92 = call i64 @compare_pnp_id(i32 %90, i8* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %85
  %95 = load %struct.pnp_dev*, %struct.pnp_dev** %15, align 8
  store %struct.pnp_dev* %95, %struct.pnp_dev** %5, align 8
  br label %102

96:                                               ; preds = %85
  %97 = load %struct.list_head*, %struct.list_head** %14, align 8
  %98 = getelementptr inbounds %struct.list_head, %struct.list_head* %97, i32 0, i32 0
  %99 = load %struct.list_head*, %struct.list_head** %98, align 8
  store %struct.list_head* %99, %struct.list_head** %14, align 8
  br label %80

100:                                              ; preds = %80
  br label %101

101:                                              ; preds = %100, %59
  store %struct.pnp_dev* null, %struct.pnp_dev** %5, align 8
  br label %102

102:                                              ; preds = %101, %94, %77, %53
  %103 = load %struct.pnp_dev*, %struct.pnp_dev** %5, align 8
  ret %struct.pnp_dev* %103
}

declare dso_local i32 @pnp_convert_id(i8*, i16 zeroext, i16 zeroext) #1

declare dso_local %struct.pnp_dev* @global_to_pnp_dev(%struct.list_head*) #1

declare dso_local i64 @compare_pnp_id(i32, i8*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local %struct.pnp_dev* @card_to_pnp_dev(%struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
