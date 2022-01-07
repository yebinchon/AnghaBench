; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pnp/isapnp/extr_compat.c_pnp_find_card.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pnp/isapnp/extr_compat.c_pnp_find_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { %struct.list_head* }
%struct.pnp_card = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.list_head* }

@ISAPNP_ANY_ID = common dso_local global i16 0, align 2
@pnp_cards = common dso_local global %struct.list_head zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pnp_card* @pnp_find_card(i16 zeroext %0, i16 zeroext %1, %struct.pnp_card* %2) #0 {
  %4 = alloca %struct.pnp_card*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca %struct.pnp_card*, align 8
  %8 = alloca [8 x i8], align 1
  %9 = alloca [8 x i8], align 1
  %10 = alloca %struct.list_head*, align 8
  %11 = alloca %struct.pnp_card*, align 8
  store i16 %0, i16* %5, align 2
  store i16 %1, i16* %6, align 2
  store %struct.pnp_card* %2, %struct.pnp_card** %7, align 8
  %12 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %13 = load i16, i16* %5, align 2
  %14 = load i16, i16* %6, align 2
  %15 = call i32 @pnp_convert_id(i8* %12, i16 zeroext %13, i16 zeroext %14)
  %16 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 0
  %17 = load i16, i16* @ISAPNP_ANY_ID, align 2
  %18 = load i16, i16* @ISAPNP_ANY_ID, align 2
  %19 = call i32 @pnp_convert_id(i8* %16, i16 zeroext %17, i16 zeroext %18)
  %20 = load %struct.pnp_card*, %struct.pnp_card** %7, align 8
  %21 = icmp ne %struct.pnp_card* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %3
  %23 = load %struct.pnp_card*, %struct.pnp_card** %7, align 8
  %24 = getelementptr inbounds %struct.pnp_card, %struct.pnp_card* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load %struct.list_head*, %struct.list_head** %25, align 8
  br label %29

27:                                               ; preds = %3
  %28 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @pnp_cards, i32 0, i32 0), align 8
  br label %29

29:                                               ; preds = %27, %22
  %30 = phi %struct.list_head* [ %26, %22 ], [ %28, %27 ]
  store %struct.list_head* %30, %struct.list_head** %10, align 8
  br label %31

31:                                               ; preds = %50, %29
  %32 = load %struct.list_head*, %struct.list_head** %10, align 8
  %33 = icmp ne %struct.list_head* %32, @pnp_cards
  br i1 %33, label %34, label %54

34:                                               ; preds = %31
  %35 = load %struct.list_head*, %struct.list_head** %10, align 8
  %36 = call %struct.pnp_card* @global_to_pnp_card(%struct.list_head* %35)
  store %struct.pnp_card* %36, %struct.pnp_card** %11, align 8
  %37 = load %struct.pnp_card*, %struct.pnp_card** %11, align 8
  %38 = getelementptr inbounds %struct.pnp_card, %struct.pnp_card* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %41 = call i64 @compare_pnp_id(i32 %39, i8* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %34
  %44 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %45 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 0
  %46 = call i64 @memcmp(i8* %44, i8* %45, i32 7)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43, %34
  %49 = load %struct.pnp_card*, %struct.pnp_card** %11, align 8
  store %struct.pnp_card* %49, %struct.pnp_card** %4, align 8
  br label %55

50:                                               ; preds = %43
  %51 = load %struct.list_head*, %struct.list_head** %10, align 8
  %52 = getelementptr inbounds %struct.list_head, %struct.list_head* %51, i32 0, i32 0
  %53 = load %struct.list_head*, %struct.list_head** %52, align 8
  store %struct.list_head* %53, %struct.list_head** %10, align 8
  br label %31

54:                                               ; preds = %31
  store %struct.pnp_card* null, %struct.pnp_card** %4, align 8
  br label %55

55:                                               ; preds = %54, %48
  %56 = load %struct.pnp_card*, %struct.pnp_card** %4, align 8
  ret %struct.pnp_card* %56
}

declare dso_local i32 @pnp_convert_id(i8*, i16 zeroext, i16 zeroext) #1

declare dso_local %struct.pnp_card* @global_to_pnp_card(%struct.list_head*) #1

declare dso_local i64 @compare_pnp_id(i32, i8*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
