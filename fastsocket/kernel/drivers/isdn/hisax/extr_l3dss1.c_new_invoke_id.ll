; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_l3dss1.c_new_invoke_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_l3dss1.c_new_invoke_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PStack = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.PStack*)* @new_invoke_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @new_invoke_id(%struct.PStack* %0) #0 {
  %2 = alloca %struct.PStack*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store %struct.PStack* %0, %struct.PStack** %2, align 8
  store i32 32, i32* %4, align 4
  %5 = load %struct.PStack*, %struct.PStack** %2, align 8
  %6 = getelementptr inbounds %struct.PStack, %struct.PStack* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = add nsw i32 %9, 1
  %11 = trunc i32 %10 to i8
  store i8 %11, i8* %3, align 1
  br label %12

12:                                               ; preds = %30, %1
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %12
  %16 = load %struct.PStack*, %struct.PStack** %2, align 8
  %17 = getelementptr inbounds %struct.PStack, %struct.PStack* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = load i8, i8* %3, align 1
  %22 = zext i8 %21 to i32
  %23 = ashr i32 %22, 3
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %20, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 255
  br label %28

28:                                               ; preds = %15, %12
  %29 = phi i1 [ false, %12 ], [ %27, %15 ]
  br i1 %29, label %30, label %41

30:                                               ; preds = %28
  %31 = load i8, i8* %3, align 1
  %32 = zext i8 %31 to i32
  %33 = and i32 %32, 248
  %34 = add nsw i32 %33, 8
  %35 = load %struct.PStack*, %struct.PStack** %2, align 8
  %36 = getelementptr inbounds %struct.PStack, %struct.PStack* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  store i32 %34, i32* %38, align 8
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %4, align 4
  br label %12

41:                                               ; preds = %28
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %67

44:                                               ; preds = %41
  br label %45

45:                                               ; preds = %63, %44
  %46 = load %struct.PStack*, %struct.PStack** %2, align 8
  %47 = getelementptr inbounds %struct.PStack, %struct.PStack* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i8, i8* %3, align 1
  %52 = zext i8 %51 to i32
  %53 = ashr i32 %52, 3
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %50, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load i8, i8* %3, align 1
  %58 = zext i8 %57 to i32
  %59 = and i32 %58, 7
  %60 = shl i32 1, %59
  %61 = and i32 %56, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %45
  %64 = load i8, i8* %3, align 1
  %65 = add i8 %64, 1
  store i8 %65, i8* %3, align 1
  br label %45

66:                                               ; preds = %45
  br label %68

67:                                               ; preds = %41
  store i8 0, i8* %3, align 1
  br label %68

68:                                               ; preds = %67, %66
  %69 = load i8, i8* %3, align 1
  %70 = zext i8 %69 to i32
  %71 = load %struct.PStack*, %struct.PStack** %2, align 8
  %72 = getelementptr inbounds %struct.PStack, %struct.PStack* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  store i32 %70, i32* %74, align 8
  %75 = load i8, i8* %3, align 1
  %76 = zext i8 %75 to i32
  %77 = and i32 %76, 7
  %78 = shl i32 1, %77
  %79 = load %struct.PStack*, %struct.PStack** %2, align 8
  %80 = getelementptr inbounds %struct.PStack, %struct.PStack* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = load i8, i8* %3, align 1
  %85 = zext i8 %84 to i32
  %86 = ashr i32 %85, 3
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %83, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %89, %78
  store i32 %90, i32* %88, align 4
  %91 = load i8, i8* %3, align 1
  ret i8 %91
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
