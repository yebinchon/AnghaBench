; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tty3270.c_tty3270_do_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tty3270.c_tty3270_do_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty3270 = type { i64, i32, i32, %struct.TYPE_4__, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@TW_PLUSALARM = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty3270*, i8*, i32)* @tty3270_do_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tty3270_do_write(%struct.tty3270* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.tty3270*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.tty3270* %0, %struct.tty3270** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.tty3270*, %struct.tty3270** %4, align 8
  %10 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = call i32 @spin_lock_bh(i32* %11)
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %149, %3
  %14 = load %struct.tty3270*, %struct.tty3270** %4, align 8
  %15 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %14, i32 0, i32 6
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %13
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %21, %22
  br label %24

24:                                               ; preds = %20, %13
  %25 = phi i1 [ false, %13 ], [ %23, %20 ]
  br i1 %25, label %26, label %152

26:                                               ; preds = %24
  %27 = load %struct.tty3270*, %struct.tty3270** %4, align 8
  %28 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %26
  %32 = load %struct.tty3270*, %struct.tty3270** %4, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = call i32 @tty3270_escape_sequence(%struct.tty3270* %32, i8 zeroext %37)
  br label %149

39:                                               ; preds = %26
  %40 = load i8*, i8** %5, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i32
  switch i32 %45, label %122 [
    i32 7, label %46
    i32 8, label %52
    i32 9, label %65
    i32 10, label %98
    i32 12, label %103
    i32 13, label %110
    i32 15, label %113
    i32 27, label %114
  ]

46:                                               ; preds = %39
  %47 = load i32, i32* @TW_PLUSALARM, align 4
  %48 = load %struct.tty3270*, %struct.tty3270** %4, align 8
  %49 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 4
  br label %148

52:                                               ; preds = %39
  %53 = load %struct.tty3270*, %struct.tty3270** %4, align 8
  %54 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %52
  %58 = load %struct.tty3270*, %struct.tty3270** %4, align 8
  %59 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %59, align 8
  %62 = load %struct.tty3270*, %struct.tty3270** %4, align 8
  %63 = call i32 @tty3270_put_character(%struct.tty3270* %62, i8 zeroext 32)
  br label %64

64:                                               ; preds = %57, %52
  br label %148

65:                                               ; preds = %39
  %66 = load %struct.tty3270*, %struct.tty3270** %4, align 8
  %67 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = srem i32 %68, 8
  store i32 %69, i32* %8, align 4
  br label %70

70:                                               ; preds = %94, %65
  %71 = load i32, i32* %8, align 4
  %72 = icmp slt i32 %71, 8
  br i1 %72, label %73, label %97

73:                                               ; preds = %70
  %74 = load %struct.tty3270*, %struct.tty3270** %4, align 8
  %75 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.tty3270*, %struct.tty3270** %4, align 8
  %78 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp sge i32 %76, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %73
  %83 = load %struct.tty3270*, %struct.tty3270** %4, align 8
  %84 = call i32 @tty3270_cr(%struct.tty3270* %83)
  %85 = load %struct.tty3270*, %struct.tty3270** %4, align 8
  %86 = call i32 @tty3270_lf(%struct.tty3270* %85)
  br label %97

87:                                               ; preds = %73
  %88 = load %struct.tty3270*, %struct.tty3270** %4, align 8
  %89 = call i32 @tty3270_put_character(%struct.tty3270* %88, i8 zeroext 32)
  %90 = load %struct.tty3270*, %struct.tty3270** %4, align 8
  %91 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %91, align 8
  br label %94

94:                                               ; preds = %87
  %95 = load i32, i32* %8, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %8, align 4
  br label %70

97:                                               ; preds = %82, %70
  br label %148

98:                                               ; preds = %39
  %99 = load %struct.tty3270*, %struct.tty3270** %4, align 8
  %100 = call i32 @tty3270_cr(%struct.tty3270* %99)
  %101 = load %struct.tty3270*, %struct.tty3270** %4, align 8
  %102 = call i32 @tty3270_lf(%struct.tty3270* %101)
  br label %148

103:                                              ; preds = %39
  %104 = load %struct.tty3270*, %struct.tty3270** %4, align 8
  %105 = call i32 @tty3270_erase_display(%struct.tty3270* %104, i32 2)
  %106 = load %struct.tty3270*, %struct.tty3270** %4, align 8
  %107 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %106, i32 0, i32 2
  store i32 0, i32* %107, align 4
  %108 = load %struct.tty3270*, %struct.tty3270** %4, align 8
  %109 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %108, i32 0, i32 1
  store i32 0, i32* %109, align 8
  br label %148

110:                                              ; preds = %39
  %111 = load %struct.tty3270*, %struct.tty3270** %4, align 8
  %112 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %111, i32 0, i32 1
  store i32 0, i32* %112, align 8
  br label %148

113:                                              ; preds = %39
  br label %148

114:                                              ; preds = %39
  %115 = load %struct.tty3270*, %struct.tty3270** %4, align 8
  %116 = load i8*, i8** %5, align 8
  %117 = load i32, i32* %7, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8, i8* %116, i64 %118
  %120 = load i8, i8* %119, align 1
  %121 = call i32 @tty3270_escape_sequence(%struct.tty3270* %115, i8 zeroext %120)
  br label %148

122:                                              ; preds = %39
  %123 = load %struct.tty3270*, %struct.tty3270** %4, align 8
  %124 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.tty3270*, %struct.tty3270** %4, align 8
  %127 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %126, i32 0, i32 3
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = icmp sge i32 %125, %129
  br i1 %130, label %131, label %136

131:                                              ; preds = %122
  %132 = load %struct.tty3270*, %struct.tty3270** %4, align 8
  %133 = call i32 @tty3270_cr(%struct.tty3270* %132)
  %134 = load %struct.tty3270*, %struct.tty3270** %4, align 8
  %135 = call i32 @tty3270_lf(%struct.tty3270* %134)
  br label %136

136:                                              ; preds = %131, %122
  %137 = load %struct.tty3270*, %struct.tty3270** %4, align 8
  %138 = load i8*, i8** %5, align 8
  %139 = load i32, i32* %7, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8, i8* %138, i64 %140
  %142 = load i8, i8* %141, align 1
  %143 = call i32 @tty3270_put_character(%struct.tty3270* %137, i8 zeroext %142)
  %144 = load %struct.tty3270*, %struct.tty3270** %4, align 8
  %145 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %145, align 8
  br label %148

148:                                              ; preds = %136, %114, %113, %110, %103, %98, %97, %64, %46
  br label %149

149:                                              ; preds = %148, %31
  %150 = load i32, i32* %7, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %7, align 4
  br label %13

152:                                              ; preds = %24
  %153 = load %struct.tty3270*, %struct.tty3270** %4, align 8
  %154 = load %struct.tty3270*, %struct.tty3270** %4, align 8
  %155 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @tty3270_convert_line(%struct.tty3270* %153, i32 %156)
  %158 = load %struct.tty3270*, %struct.tty3270** %4, align 8
  %159 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %158, i32 0, i32 4
  %160 = call i32 @timer_pending(i32* %159)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %167, label %162

162:                                              ; preds = %152
  %163 = load %struct.tty3270*, %struct.tty3270** %4, align 8
  %164 = load i32, i32* @HZ, align 4
  %165 = sdiv i32 %164, 10
  %166 = call i32 @tty3270_set_timer(%struct.tty3270* %163, i32 %165)
  br label %167

167:                                              ; preds = %162, %152
  %168 = load %struct.tty3270*, %struct.tty3270** %4, align 8
  %169 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %168, i32 0, i32 3
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 1
  %171 = call i32 @spin_unlock_bh(i32* %170)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @tty3270_escape_sequence(%struct.tty3270*, i8 zeroext) #1

declare dso_local i32 @tty3270_put_character(%struct.tty3270*, i8 zeroext) #1

declare dso_local i32 @tty3270_cr(%struct.tty3270*) #1

declare dso_local i32 @tty3270_lf(%struct.tty3270*) #1

declare dso_local i32 @tty3270_erase_display(%struct.tty3270*, i32) #1

declare dso_local i32 @tty3270_convert_line(%struct.tty3270*, i32) #1

declare dso_local i32 @timer_pending(i32*) #1

declare dso_local i32 @tty3270_set_timer(%struct.tty3270*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
