; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_nsp32_debug.c_print_commandk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_nsp32_debug.c_print_commandk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"%02x \00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"LBA=%d len=%d\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @print_commandk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_commandk(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = getelementptr inbounds i8, i8* %5, i64 0
  %7 = load i8, i8* %6, align 1
  %8 = call i32 @print_opcodek(i8 zeroext %7)
  %9 = load i8*, i8** %2, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 0
  %11 = load i8, i8* %10, align 1
  %12 = zext i8 %11 to i32
  %13 = ashr i32 %12, 5
  %14 = icmp eq i32 %13, 6
  br i1 %14, label %22, label %15

15:                                               ; preds = %1
  %16 = load i8*, i8** %2, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i32
  %20 = ashr i32 %19, 5
  %21 = icmp eq i32 %20, 7
  br i1 %21, label %22, label %23

22:                                               ; preds = %15, %1
  store i32 12, i32* %4, align 4
  br label %28

23:                                               ; preds = %15
  %24 = load i8*, i8** %2, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = call i32 @COMMAND_SIZE(i8 zeroext %26)
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %23, %22
  store i32 1, i32* %3, align 4
  br label %29

29:                                               ; preds = %41, %28
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %29
  %34 = load i8*, i8** %2, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %33
  %42 = load i32, i32* %3, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %3, align 4
  br label %29

44:                                               ; preds = %29
  %45 = load i32, i32* %4, align 4
  switch i32 %45, label %149 [
    i32 6, label %46
    i32 10, label %69
    i32 12, label %103
  ]

46:                                               ; preds = %44
  %47 = load i8*, i8** %2, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = and i32 %50, 15
  %52 = shl i32 %51, 16
  %53 = load i8*, i8** %2, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 2
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = shl i32 %56, 8
  %58 = or i32 %52, %57
  %59 = load i8*, i8** %2, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 3
  %61 = load i8, i8* %60, align 1
  %62 = zext i8 %61 to i32
  %63 = or i32 %58, %62
  %64 = load i8*, i8** %2, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 4
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  %68 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %63, i32 %67)
  br label %150

69:                                               ; preds = %44
  %70 = load i8*, i8** %2, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 2
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i32
  %74 = shl i32 %73, 24
  %75 = load i8*, i8** %2, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 3
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i32
  %79 = shl i32 %78, 16
  %80 = or i32 %74, %79
  %81 = load i8*, i8** %2, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 4
  %83 = load i8, i8* %82, align 1
  %84 = zext i8 %83 to i32
  %85 = shl i32 %84, 8
  %86 = or i32 %80, %85
  %87 = load i8*, i8** %2, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 5
  %89 = load i8, i8* %88, align 1
  %90 = zext i8 %89 to i32
  %91 = or i32 %86, %90
  %92 = load i8*, i8** %2, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 7
  %94 = load i8, i8* %93, align 1
  %95 = zext i8 %94 to i32
  %96 = shl i32 %95, 8
  %97 = load i8*, i8** %2, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 8
  %99 = load i8, i8* %98, align 1
  %100 = zext i8 %99 to i32
  %101 = or i32 %96, %100
  %102 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %91, i32 %101)
  br label %150

103:                                              ; preds = %44
  %104 = load i8*, i8** %2, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 2
  %106 = load i8, i8* %105, align 1
  %107 = zext i8 %106 to i32
  %108 = shl i32 %107, 24
  %109 = load i8*, i8** %2, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 3
  %111 = load i8, i8* %110, align 1
  %112 = zext i8 %111 to i32
  %113 = shl i32 %112, 16
  %114 = or i32 %108, %113
  %115 = load i8*, i8** %2, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 4
  %117 = load i8, i8* %116, align 1
  %118 = zext i8 %117 to i32
  %119 = shl i32 %118, 8
  %120 = or i32 %114, %119
  %121 = load i8*, i8** %2, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 5
  %123 = load i8, i8* %122, align 1
  %124 = zext i8 %123 to i32
  %125 = or i32 %120, %124
  %126 = load i8*, i8** %2, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 6
  %128 = load i8, i8* %127, align 1
  %129 = zext i8 %128 to i32
  %130 = shl i32 %129, 24
  %131 = load i8*, i8** %2, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 7
  %133 = load i8, i8* %132, align 1
  %134 = zext i8 %133 to i32
  %135 = shl i32 %134, 16
  %136 = or i32 %130, %135
  %137 = load i8*, i8** %2, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 8
  %139 = load i8, i8* %138, align 1
  %140 = zext i8 %139 to i32
  %141 = shl i32 %140, 8
  %142 = or i32 %136, %141
  %143 = load i8*, i8** %2, align 8
  %144 = getelementptr inbounds i8, i8* %143, i64 9
  %145 = load i8, i8* %144, align 1
  %146 = zext i8 %145 to i32
  %147 = or i32 %142, %146
  %148 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %125, i32 %147)
  br label %150

149:                                              ; preds = %44
  br label %150

150:                                              ; preds = %149, %103, %69, %46
  %151 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @print_opcodek(i8 zeroext) #1

declare dso_local i32 @COMMAND_SIZE(i8 zeroext) #1

declare dso_local i32 @printk(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
