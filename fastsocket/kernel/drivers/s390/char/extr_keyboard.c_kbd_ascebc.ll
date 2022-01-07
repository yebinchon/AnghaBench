; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_keyboard.c_kbd_ascebc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_keyboard.c_kbd_ascebc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kbd_data = type { i16** }

@key_maps = common dso_local global i32 0, align 4
@NR_KEYS = common dso_local global i32 0, align 4
@KT_LATIN = common dso_local global i32 0, align 4
@KT_LETTER = common dso_local global i32 0, align 4
@KT_DEAD = common dso_local global i32 0, align 4
@ret_diacr = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kbd_ascebc(%struct.kbd_data* %0, i8* %1) #0 {
  %3 = alloca %struct.kbd_data*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i16*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.kbd_data* %0, %struct.kbd_data** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @memset(i8* %10, i32 64, i32 256)
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %84, %2
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @key_maps, align 4
  %15 = call i32 @ARRAY_SIZE(i32 %14)
  %16 = icmp slt i32 %13, %15
  br i1 %16, label %17, label %87

17:                                               ; preds = %12
  %18 = load %struct.kbd_data*, %struct.kbd_data** %3, align 8
  %19 = getelementptr inbounds %struct.kbd_data, %struct.kbd_data* %18, i32 0, i32 0
  %20 = load i16**, i16*** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i16*, i16** %20, i64 %22
  %24 = load i16*, i16** %23, align 8
  store i16* %24, i16** %5, align 8
  %25 = load i16*, i16** %5, align 8
  %26 = icmp ne i16* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %17
  br label %84

28:                                               ; preds = %17
  store i32 0, i32* %8, align 4
  br label %29

29:                                               ; preds = %80, %28
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @NR_KEYS, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %83

33:                                               ; preds = %29
  %34 = load i32, i32* %7, align 4
  %35 = and i32 %34, 1
  %36 = shl i32 %35, 7
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %36, %37
  store i32 %38, i32* %9, align 4
  %39 = load i16*, i16** %5, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i16, i16* %39, i64 %41
  %43 = load i16, i16* %42, align 2
  store i16 %43, i16* %6, align 2
  %44 = load i16, i16* %6, align 2
  %45 = call i32 @KTYP(i16 zeroext %44)
  %46 = load i32, i32* @KT_LATIN, align 4
  %47 = or i32 %46, 240
  %48 = icmp eq i32 %45, %47
  br i1 %48, label %55, label %49

49:                                               ; preds = %33
  %50 = load i16, i16* %6, align 2
  %51 = call i32 @KTYP(i16 zeroext %50)
  %52 = load i32, i32* @KT_LETTER, align 4
  %53 = or i32 %52, 240
  %54 = icmp eq i32 %51, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %49, %33
  %56 = load i32, i32* %9, align 4
  %57 = trunc i32 %56 to i8
  %58 = load i8*, i8** %4, align 8
  %59 = load i16, i16* %6, align 2
  %60 = call i64 @KVAL(i16 zeroext %59)
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  store i8 %57, i8* %61, align 1
  br label %79

62:                                               ; preds = %49
  %63 = load i16, i16* %6, align 2
  %64 = call i32 @KTYP(i16 zeroext %63)
  %65 = load i32, i32* @KT_DEAD, align 4
  %66 = or i32 %65, 240
  %67 = icmp eq i32 %64, %66
  br i1 %67, label %68, label %78

68:                                               ; preds = %62
  %69 = load i32, i32* %9, align 4
  %70 = trunc i32 %69 to i8
  %71 = load i8*, i8** %4, align 8
  %72 = load i64*, i64** @ret_diacr, align 8
  %73 = load i16, i16* %6, align 2
  %74 = call i64 @KVAL(i16 zeroext %73)
  %75 = getelementptr inbounds i64, i64* %72, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds i8, i8* %71, i64 %76
  store i8 %70, i8* %77, align 1
  br label %78

78:                                               ; preds = %68, %62
  br label %79

79:                                               ; preds = %78, %55
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %8, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %8, align 4
  br label %29

83:                                               ; preds = %29
  br label %84

84:                                               ; preds = %83, %27
  %85 = load i32, i32* %7, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %7, align 4
  br label %12

87:                                               ; preds = %12
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @KTYP(i16 zeroext) #1

declare dso_local i64 @KVAL(i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
