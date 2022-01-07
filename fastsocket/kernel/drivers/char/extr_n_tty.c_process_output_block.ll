; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_n_tty.c_process_output_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_n_tty.c_process_output_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.tty_struct*, i8*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, i8*, i32)* @process_output_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_output_block(%struct.tty_struct* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8, align 1
  store %struct.tty_struct* %0, %struct.tty_struct** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %13 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %16 = call i32 @tty_write_room(%struct.tty_struct* %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %3
  %20 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %21 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %20, i32 0, i32 0
  %22 = call i32 @mutex_unlock(i32* %21)
  store i32 0, i32* %4, align 4
  br label %132

23:                                               ; preds = %3
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ugt i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %7, align 4
  br label %29

29:                                               ; preds = %27, %23
  store i32 0, i32* %9, align 4
  %30 = load i8*, i8** %6, align 8
  store i8* %30, i8** %10, align 8
  br label %31

31:                                               ; preds = %112, %29
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %35, label %117

35:                                               ; preds = %31
  %36 = load i8*, i8** %10, align 8
  %37 = load i8, i8* %36, align 1
  store i8 %37, i8* %11, align 1
  %38 = load i8, i8* %11, align 1
  %39 = zext i8 %38 to i32
  switch i32 %39, label %90 [
    i32 10, label %40
    i32 13, label %58
    i32 9, label %78
    i32 8, label %79
  ]

40:                                               ; preds = %35
  %41 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %42 = call i32 @O_ONLRET(%struct.tty_struct* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %46 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %45, i32 0, i32 2
  store i32 0, i32* %46, align 8
  br label %47

47:                                               ; preds = %44, %40
  %48 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %49 = call i32 @O_ONLCR(%struct.tty_struct* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  br label %118

52:                                               ; preds = %47
  %53 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %54 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %57 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 4
  br label %111

58:                                               ; preds = %35
  %59 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %60 = call i32 @O_ONOCR(%struct.tty_struct* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %58
  %63 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %64 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  br label %118

68:                                               ; preds = %62, %58
  %69 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %70 = call i32 @O_OCRNL(%struct.tty_struct* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  br label %118

73:                                               ; preds = %68
  %74 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %75 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %74, i32 0, i32 2
  store i32 0, i32* %75, align 8
  %76 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %77 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %76, i32 0, i32 3
  store i32 0, i32* %77, align 4
  br label %111

78:                                               ; preds = %35
  br label %118

79:                                               ; preds = %35
  %80 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %81 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %79
  %85 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %86 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = add nsw i32 %87, -1
  store i32 %88, i32* %86, align 8
  br label %89

89:                                               ; preds = %84, %79
  br label %111

90:                                               ; preds = %35
  %91 = load i8, i8* %11, align 1
  %92 = call i32 @iscntrl(i8 zeroext %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %110, label %94

94:                                               ; preds = %90
  %95 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %96 = call i32 @O_OLCUC(%struct.tty_struct* %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %94
  br label %118

99:                                               ; preds = %94
  %100 = load i8, i8* %11, align 1
  %101 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %102 = call i32 @is_continuation(i8 zeroext %100, %struct.tty_struct* %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %109, label %104

104:                                              ; preds = %99
  %105 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %106 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %106, align 8
  br label %109

109:                                              ; preds = %104, %99
  br label %110

110:                                              ; preds = %109, %90
  br label %111

111:                                              ; preds = %110, %89, %73, %52
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %9, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %9, align 4
  %115 = load i8*, i8** %10, align 8
  %116 = getelementptr inbounds i8, i8* %115, i32 1
  store i8* %116, i8** %10, align 8
  br label %31

117:                                              ; preds = %31
  br label %118

118:                                              ; preds = %117, %98, %78, %72, %67, %51
  %119 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %120 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %119, i32 0, i32 1
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  %123 = load i32 (%struct.tty_struct*, i8*, i32)*, i32 (%struct.tty_struct*, i8*, i32)** %122, align 8
  %124 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %125 = load i8*, i8** %6, align 8
  %126 = load i32, i32* %9, align 4
  %127 = call i32 %123(%struct.tty_struct* %124, i8* %125, i32 %126)
  store i32 %127, i32* %9, align 4
  %128 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %129 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %128, i32 0, i32 0
  %130 = call i32 @mutex_unlock(i32* %129)
  %131 = load i32, i32* %9, align 4
  store i32 %131, i32* %4, align 4
  br label %132

132:                                              ; preds = %118, %19
  %133 = load i32, i32* %4, align 4
  ret i32 %133
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @tty_write_room(%struct.tty_struct*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @O_ONLRET(%struct.tty_struct*) #1

declare dso_local i32 @O_ONLCR(%struct.tty_struct*) #1

declare dso_local i32 @O_ONOCR(%struct.tty_struct*) #1

declare dso_local i32 @O_OCRNL(%struct.tty_struct*) #1

declare dso_local i32 @iscntrl(i8 zeroext) #1

declare dso_local i32 @O_OLCUC(%struct.tty_struct*) #1

declare dso_local i32 @is_continuation(i8 zeroext, %struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
