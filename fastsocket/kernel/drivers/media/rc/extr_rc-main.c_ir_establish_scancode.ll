; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_rc-main.c_ir_establish_scancode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_rc-main.c_ir_establish_scancode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_dev = type { i32 }
%struct.rc_map = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@KEY_RESERVED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rc_dev*, %struct.rc_map*, i32, i32)* @ir_establish_scancode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ir_establish_scancode(%struct.rc_dev* %0, %struct.rc_map* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rc_dev*, align 8
  %7 = alloca %struct.rc_map*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rc_dev* %0, %struct.rc_dev** %6, align 8
  store %struct.rc_map* %1, %struct.rc_map** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %12 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %4
  %16 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %17 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %8, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %8, align 4
  br label %21

21:                                               ; preds = %15, %4
  store i32 0, i32* %10, align 4
  br label %22

22:                                               ; preds = %54, %21
  %23 = load i32, i32* %10, align 4
  %24 = load %struct.rc_map*, %struct.rc_map** %7, align 8
  %25 = getelementptr inbounds %struct.rc_map, %struct.rc_map* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ult i32 %23, %26
  br i1 %27, label %28, label %57

28:                                               ; preds = %22
  %29 = load %struct.rc_map*, %struct.rc_map** %7, align 8
  %30 = getelementptr inbounds %struct.rc_map, %struct.rc_map* %29, i32 0, i32 2
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = load i32, i32* %10, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %28
  %40 = load i32, i32* %10, align 4
  store i32 %40, i32* %5, align 4
  br label %126

41:                                               ; preds = %28
  %42 = load %struct.rc_map*, %struct.rc_map** %7, align 8
  %43 = getelementptr inbounds %struct.rc_map, %struct.rc_map* %42, i32 0, i32 2
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = load i32, i32* %10, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp uge i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %41
  br label %57

53:                                               ; preds = %41
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %10, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %10, align 4
  br label %22

57:                                               ; preds = %52, %22
  %58 = load %struct.rc_map*, %struct.rc_map** %7, align 8
  %59 = getelementptr inbounds %struct.rc_map, %struct.rc_map* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.rc_map*, %struct.rc_map** %7, align 8
  %62 = getelementptr inbounds %struct.rc_map, %struct.rc_map* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp eq i32 %60, %63
  br i1 %64, label %65, label %75

65:                                               ; preds = %57
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %65
  %69 = load %struct.rc_map*, %struct.rc_map** %7, align 8
  %70 = load i32, i32* @GFP_ATOMIC, align 4
  %71 = call i64 @ir_resize_table(%struct.rc_map* %69, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %68, %65
  store i32 -1, i32* %5, align 4
  br label %126

74:                                               ; preds = %68
  br label %75

75:                                               ; preds = %74, %57
  %76 = load i32, i32* %10, align 4
  %77 = load %struct.rc_map*, %struct.rc_map** %7, align 8
  %78 = getelementptr inbounds %struct.rc_map, %struct.rc_map* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp ult i32 %76, %79
  br i1 %80, label %81, label %104

81:                                               ; preds = %75
  %82 = load %struct.rc_map*, %struct.rc_map** %7, align 8
  %83 = getelementptr inbounds %struct.rc_map, %struct.rc_map* %82, i32 0, i32 2
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %83, align 8
  %85 = load i32, i32* %10, align 4
  %86 = add i32 %85, 1
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i64 %87
  %89 = load %struct.rc_map*, %struct.rc_map** %7, align 8
  %90 = getelementptr inbounds %struct.rc_map, %struct.rc_map* %89, i32 0, i32 2
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %90, align 8
  %92 = load i32, i32* %10, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i64 %93
  %95 = load %struct.rc_map*, %struct.rc_map** %7, align 8
  %96 = getelementptr inbounds %struct.rc_map, %struct.rc_map* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* %10, align 4
  %99 = sub i32 %97, %98
  %100 = zext i32 %99 to i64
  %101 = mul i64 %100, 4
  %102 = trunc i64 %101 to i32
  %103 = call i32 @memmove(%struct.TYPE_3__* %88, %struct.TYPE_3__* %94, i32 %102)
  br label %104

104:                                              ; preds = %81, %75
  %105 = load i32, i32* %8, align 4
  %106 = load %struct.rc_map*, %struct.rc_map** %7, align 8
  %107 = getelementptr inbounds %struct.rc_map, %struct.rc_map* %106, i32 0, i32 2
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %107, align 8
  %109 = load i32, i32* %10, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  store i32 %105, i32* %112, align 4
  %113 = load i32, i32* @KEY_RESERVED, align 4
  %114 = load %struct.rc_map*, %struct.rc_map** %7, align 8
  %115 = getelementptr inbounds %struct.rc_map, %struct.rc_map* %114, i32 0, i32 2
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %115, align 8
  %117 = load i32, i32* %10, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 1
  store i32 %113, i32* %120, align 4
  %121 = load %struct.rc_map*, %struct.rc_map** %7, align 8
  %122 = getelementptr inbounds %struct.rc_map, %struct.rc_map* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = add i32 %123, 1
  store i32 %124, i32* %122, align 8
  %125 = load i32, i32* %10, align 4
  store i32 %125, i32* %5, align 4
  br label %126

126:                                              ; preds = %104, %73, %39
  %127 = load i32, i32* %5, align 4
  ret i32 %127
}

declare dso_local i64 @ir_resize_table(%struct.rc_map*, i32) #1

declare dso_local i32 @memmove(%struct.TYPE_3__*, %struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
