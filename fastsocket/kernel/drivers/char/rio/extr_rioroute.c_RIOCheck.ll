; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/rio/extr_rioroute.c_RIOCheck.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/rio/extr_rioroute.c_RIOCheck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Host = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@RIO_DEBUG_ROUTE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"RIOCheck : UnitID = %d\0A\00", align 1
@HOST_ID = common dso_local global i32 0, align 4
@MAX_RUP = common dso_local global i32 0, align 4
@LINKS_PER_UNIT = common dso_local global i8 0, align 1
@BEEN_HERE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Host*, i32)* @RIOCheck to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @RIOCheck(%struct.Host* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  store %struct.Host* %0, %struct.Host** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @RIO_DEBUG_ROUTE, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @rio_dprintk(i32 %7, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @HOST_ID, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %124

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = add i32 %15, -1
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @MAX_RUP, align 4
  %19 = icmp uge i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %124

21:                                               ; preds = %14
  store i8 0, i8* %6, align 1
  br label %22

22:                                               ; preds = %46, %21
  %23 = load i8, i8* %6, align 1
  %24 = zext i8 %23 to i32
  %25 = load i8, i8* @LINKS_PER_UNIT, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp slt i32 %24, %26
  br i1 %27, label %28, label %49

28:                                               ; preds = %22
  %29 = load %struct.Host*, %struct.Host** %4, align 8
  %30 = getelementptr inbounds %struct.Host, %struct.Host* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = load i8, i8* %6, align 1
  %38 = zext i8 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @HOST_ID, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %28
  store i32 1, i32* %3, align 4
  br label %124

45:                                               ; preds = %28
  br label %46

46:                                               ; preds = %45
  %47 = load i8, i8* %6, align 1
  %48 = add i8 %47, 1
  store i8 %48, i8* %6, align 1
  br label %22

49:                                               ; preds = %22
  %50 = load %struct.Host*, %struct.Host** %4, align 8
  %51 = getelementptr inbounds %struct.Host, %struct.Host* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @BEEN_HERE, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %49
  store i32 0, i32* %3, align 4
  br label %124

62:                                               ; preds = %49
  %63 = load i32, i32* @BEEN_HERE, align 4
  %64 = load %struct.Host*, %struct.Host** %4, align 8
  %65 = getelementptr inbounds %struct.Host, %struct.Host* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = load i32, i32* %5, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = or i32 %71, %63
  store i32 %72, i32* %70, align 8
  store i8 0, i8* %6, align 1
  br label %73

73:                                               ; preds = %109, %62
  %74 = load i8, i8* %6, align 1
  %75 = zext i8 %74 to i32
  %76 = load i8, i8* @LINKS_PER_UNIT, align 1
  %77 = zext i8 %76 to i32
  %78 = icmp slt i32 %75, %77
  br i1 %78, label %79, label %112

79:                                               ; preds = %73
  %80 = load %struct.Host*, %struct.Host** %4, align 8
  %81 = load %struct.Host*, %struct.Host** %4, align 8
  %82 = getelementptr inbounds %struct.Host, %struct.Host* %81, i32 0, i32 0
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = load i32, i32* %5, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = load i8, i8* %6, align 1
  %90 = zext i8 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @RIOCheck(%struct.Host* %80, i32 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %108

96:                                               ; preds = %79
  %97 = load i32, i32* @BEEN_HERE, align 4
  %98 = xor i32 %97, -1
  %99 = load %struct.Host*, %struct.Host** %4, align 8
  %100 = getelementptr inbounds %struct.Host, %struct.Host* %99, i32 0, i32 0
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = load i32, i32* %5, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = and i32 %106, %98
  store i32 %107, i32* %105, align 8
  store i32 1, i32* %3, align 4
  br label %124

108:                                              ; preds = %79
  br label %109

109:                                              ; preds = %108
  %110 = load i8, i8* %6, align 1
  %111 = add i8 %110, 1
  store i8 %111, i8* %6, align 1
  br label %73

112:                                              ; preds = %73
  %113 = load i32, i32* @BEEN_HERE, align 4
  %114 = xor i32 %113, -1
  %115 = load %struct.Host*, %struct.Host** %4, align 8
  %116 = getelementptr inbounds %struct.Host, %struct.Host* %115, i32 0, i32 0
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %116, align 8
  %118 = load i32, i32* %5, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = and i32 %122, %114
  store i32 %123, i32* %121, align 8
  store i32 0, i32* %3, align 4
  br label %124

124:                                              ; preds = %112, %96, %61, %44, %20, %13
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local i32 @rio_dprintk(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
