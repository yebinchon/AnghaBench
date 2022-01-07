; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_n_tty.c_do_output_char.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_n_tty.c_do_output_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.tty_struct*, i8*, i32)* }

@.str = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@XTABS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"        \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8, %struct.tty_struct*, i32)* @do_output_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_output_char(i8 zeroext %0, %struct.tty_struct* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca %struct.tty_struct*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8 %0, i8* %5, align 1
  store %struct.tty_struct* %1, %struct.tty_struct** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %151

12:                                               ; preds = %3
  %13 = load i8, i8* %5, align 1
  %14 = zext i8 %13 to i32
  switch i32 %14, label %124 [
    i32 10, label %15
    i32 13, label %48
    i32 9, label %77
    i32 8, label %113
  ]

15:                                               ; preds = %12
  %16 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %17 = call i32 @O_ONLRET(%struct.tty_struct* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %21 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %20, i32 0, i32 0
  store i32 0, i32* %21, align 8
  br label %22

22:                                               ; preds = %19, %15
  %23 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %24 = call i32 @O_ONLCR(%struct.tty_struct* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %42

26:                                               ; preds = %22
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %27, 2
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i32 -1, i32* %4, align 4
  br label %151

30:                                               ; preds = %26
  %31 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %32 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %31, i32 0, i32 0
  store i32 0, i32* %32, align 8
  %33 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %34 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %33, i32 0, i32 1
  store i32 0, i32* %34, align 4
  %35 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %36 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %35, i32 0, i32 2
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32 (%struct.tty_struct*, i8*, i32)*, i32 (%struct.tty_struct*, i8*, i32)** %38, align 8
  %40 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %41 = call i32 %39(%struct.tty_struct* %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  store i32 2, i32* %4, align 4
  br label %151

42:                                               ; preds = %22
  %43 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %44 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %47 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  br label %147

48:                                               ; preds = %12
  %49 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %50 = call i32 @O_ONOCR(%struct.tty_struct* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %48
  %53 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %54 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  store i32 0, i32* %4, align 4
  br label %151

58:                                               ; preds = %52, %48
  %59 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %60 = call i32 @O_OCRNL(%struct.tty_struct* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %58
  store i8 10, i8* %5, align 1
  %63 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %64 = call i32 @O_ONLRET(%struct.tty_struct* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %62
  %67 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %68 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %67, i32 0, i32 0
  store i32 0, i32* %68, align 8
  %69 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %70 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %69, i32 0, i32 1
  store i32 0, i32* %70, align 4
  br label %71

71:                                               ; preds = %66, %62
  br label %147

72:                                               ; preds = %58
  %73 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %74 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %73, i32 0, i32 0
  store i32 0, i32* %74, align 8
  %75 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %76 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %75, i32 0, i32 1
  store i32 0, i32* %76, align 4
  br label %147

77:                                               ; preds = %12
  %78 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %79 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = and i32 %80, 7
  %82 = sub nsw i32 8, %81
  store i32 %82, i32* %8, align 4
  %83 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %84 = call i32 @O_TABDLY(%struct.tty_struct* %83)
  %85 = load i32, i32* @XTABS, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %107

87:                                               ; preds = %77
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* %8, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  store i32 -1, i32* %4, align 4
  br label %151

92:                                               ; preds = %87
  %93 = load i32, i32* %8, align 4
  %94 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %95 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = add nsw i32 %96, %93
  store i32 %97, i32* %95, align 8
  %98 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %99 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %98, i32 0, i32 2
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32 (%struct.tty_struct*, i8*, i32)*, i32 (%struct.tty_struct*, i8*, i32)** %101, align 8
  %103 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %104 = load i32, i32* %8, align 4
  %105 = call i32 %102(%struct.tty_struct* %103, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %104)
  %106 = load i32, i32* %8, align 4
  store i32 %106, i32* %4, align 4
  br label %151

107:                                              ; preds = %77
  %108 = load i32, i32* %8, align 4
  %109 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %110 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = add nsw i32 %111, %108
  store i32 %112, i32* %110, align 8
  br label %147

113:                                              ; preds = %12
  %114 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %115 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = icmp sgt i32 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %113
  %119 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %120 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = add nsw i32 %121, -1
  store i32 %122, i32* %120, align 8
  br label %123

123:                                              ; preds = %118, %113
  br label %147

124:                                              ; preds = %12
  %125 = load i8, i8* %5, align 1
  %126 = call i32 @iscntrl(i8 zeroext %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %146, label %128

128:                                              ; preds = %124
  %129 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %130 = call i32 @O_OLCUC(%struct.tty_struct* %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %128
  %133 = load i8, i8* %5, align 1
  %134 = call zeroext i8 @toupper(i8 zeroext %133)
  store i8 %134, i8* %5, align 1
  br label %135

135:                                              ; preds = %132, %128
  %136 = load i8, i8* %5, align 1
  %137 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %138 = call i32 @is_continuation(i8 zeroext %136, %struct.tty_struct* %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %145, label %140

140:                                              ; preds = %135
  %141 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %142 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %142, align 8
  br label %145

145:                                              ; preds = %140, %135
  br label %146

146:                                              ; preds = %145, %124
  br label %147

147:                                              ; preds = %146, %123, %107, %72, %71, %42
  %148 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %149 = load i8, i8* %5, align 1
  %150 = call i32 @tty_put_char(%struct.tty_struct* %148, i8 zeroext %149)
  store i32 1, i32* %4, align 4
  br label %151

151:                                              ; preds = %147, %92, %91, %57, %30, %29, %11
  %152 = load i32, i32* %4, align 4
  ret i32 %152
}

declare dso_local i32 @O_ONLRET(%struct.tty_struct*) #1

declare dso_local i32 @O_ONLCR(%struct.tty_struct*) #1

declare dso_local i32 @O_ONOCR(%struct.tty_struct*) #1

declare dso_local i32 @O_OCRNL(%struct.tty_struct*) #1

declare dso_local i32 @O_TABDLY(%struct.tty_struct*) #1

declare dso_local i32 @iscntrl(i8 zeroext) #1

declare dso_local i32 @O_OLCUC(%struct.tty_struct*) #1

declare dso_local zeroext i8 @toupper(i8 zeroext) #1

declare dso_local i32 @is_continuation(i8 zeroext, %struct.tty_struct*) #1

declare dso_local i32 @tty_put_char(%struct.tty_struct*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
