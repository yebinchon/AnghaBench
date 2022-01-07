; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_nozomi.c_handle_data_dl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_nozomi.c_handle_data_dl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nozomi = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"port out of sync!, toggle:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nozomi*, i32, i32*, i32, i32, i32)* @handle_data_dl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_data_dl(%struct.nozomi* %0, i32 %1, i32* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nozomi*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.nozomi* %0, %struct.nozomi** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %14 = load i32*, i32** %10, align 8
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %63

17:                                               ; preds = %6
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* %12, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %63

22:                                               ; preds = %17
  %23 = load i32, i32* %9, align 4
  %24 = load %struct.nozomi*, %struct.nozomi** %8, align 8
  %25 = call i64 @receive_data(i32 %23, %struct.nozomi* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %22
  %28 = load i32, i32* %12, align 4
  %29 = load %struct.nozomi*, %struct.nozomi** %8, align 8
  %30 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @writew(i32 %28, i32 %31)
  %33 = load i32*, i32** %10, align 8
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = load i32*, i32** %10, align 8
  store i32 %37, i32* %38, align 4
  br label %39

39:                                               ; preds = %27, %22
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %13, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %62

44:                                               ; preds = %39
  %45 = load i32, i32* %9, align 4
  %46 = load %struct.nozomi*, %struct.nozomi** %8, align 8
  %47 = call i64 @receive_data(i32 %45, %struct.nozomi* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %44
  %50 = load i32, i32* %13, align 4
  %51 = load %struct.nozomi*, %struct.nozomi** %8, align 8
  %52 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @writew(i32 %50, i32 %53)
  %55 = load i32*, i32** %10, align 8
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = load i32*, i32** %10, align 8
  store i32 %59, i32* %60, align 4
  br label %61

61:                                               ; preds = %49, %44
  br label %62

62:                                               ; preds = %61, %39
  br label %122

63:                                               ; preds = %17, %6
  %64 = load i32*, i32** %10, align 8
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %113

67:                                               ; preds = %63
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* %13, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %113

72:                                               ; preds = %67
  %73 = load i32, i32* %9, align 4
  %74 = load %struct.nozomi*, %struct.nozomi** %8, align 8
  %75 = call i64 @receive_data(i32 %73, %struct.nozomi* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %89

77:                                               ; preds = %72
  %78 = load i32, i32* %13, align 4
  %79 = load %struct.nozomi*, %struct.nozomi** %8, align 8
  %80 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @writew(i32 %78, i32 %81)
  %83 = load i32*, i32** %10, align 8
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  %86 = xor i1 %85, true
  %87 = zext i1 %86 to i32
  %88 = load i32*, i32** %10, align 8
  store i32 %87, i32* %88, align 4
  br label %89

89:                                               ; preds = %77, %72
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* %12, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %112

94:                                               ; preds = %89
  %95 = load i32, i32* %9, align 4
  %96 = load %struct.nozomi*, %struct.nozomi** %8, align 8
  %97 = call i64 @receive_data(i32 %95, %struct.nozomi* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %111

99:                                               ; preds = %94
  %100 = load i32, i32* %12, align 4
  %101 = load %struct.nozomi*, %struct.nozomi** %8, align 8
  %102 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @writew(i32 %100, i32 %103)
  %105 = load i32*, i32** %10, align 8
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  %108 = xor i1 %107, true
  %109 = zext i1 %108 to i32
  %110 = load i32*, i32** %10, align 8
  store i32 %109, i32* %110, align 4
  br label %111

111:                                              ; preds = %99, %94
  br label %112

112:                                              ; preds = %111, %89
  br label %121

113:                                              ; preds = %67, %63
  %114 = load %struct.nozomi*, %struct.nozomi** %8, align 8
  %115 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %114, i32 0, i32 0
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load i32*, i32** %10, align 8
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @dev_err(i32* %117, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %119)
  store i32 0, i32* %7, align 4
  br label %123

121:                                              ; preds = %112
  br label %122

122:                                              ; preds = %121, %62
  store i32 1, i32* %7, align 4
  br label %123

123:                                              ; preds = %122, %113
  %124 = load i32, i32* %7, align 4
  ret i32 %124
}

declare dso_local i64 @receive_data(i32, %struct.nozomi*) #1

declare dso_local i32 @writew(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
