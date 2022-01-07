; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclink_gt.c_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclink_gt.c_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, i32, i32, %struct.slgt_info* }
%struct.slgt_info = type { i8*, i32, i32, i32, i32, i32, i32, i32*, i32 }

@.str = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"%s write count=%d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@DMABUFSIZE = common dso_local global i32 0, align 4
@TDCSR = common dso_local global i32 0, align 4
@BIT0 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"%s write rc=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, i8*, i32)* @write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write(%struct.tty_struct* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.slgt_info*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %12 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %13 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %12, i32 0, i32 3
  %14 = load %struct.slgt_info*, %struct.slgt_info** %13, align 8
  store %struct.slgt_info* %14, %struct.slgt_info** %8, align 8
  %15 = load %struct.slgt_info*, %struct.slgt_info** %8, align 8
  %16 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %17 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @sanity_check(%struct.slgt_info* %15, i32 %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  br label %163

22:                                               ; preds = %3
  %23 = load %struct.slgt_info*, %struct.slgt_info** %8, align 8
  %24 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = inttoptr i64 %27 to i8*
  %29 = call i32 @DBGINFO(i8* %28)
  %30 = load %struct.slgt_info*, %struct.slgt_info** %8, align 8
  %31 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %22
  br label %163

35:                                               ; preds = %22
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.slgt_info*, %struct.slgt_info** %8, align 8
  %38 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = icmp sgt i32 %36, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load i32, i32* @EIO, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %7, align 4
  br label %163

44:                                               ; preds = %35
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %44
  br label %163

48:                                               ; preds = %44
  %49 = load %struct.slgt_info*, %struct.slgt_info** %8, align 8
  %50 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %49, i32 0, i32 8
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %67, label %53

53:                                               ; preds = %48
  %54 = load %struct.slgt_info*, %struct.slgt_info** %8, align 8
  %55 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %53
  %59 = load %struct.slgt_info*, %struct.slgt_info** %8, align 8
  %60 = load %struct.slgt_info*, %struct.slgt_info** %8, align 8
  %61 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = load %struct.slgt_info*, %struct.slgt_info** %8, align 8
  %64 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @tx_load(%struct.slgt_info* %59, i8* %62, i32 %65)
  br label %92

67:                                               ; preds = %53, %48
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @DMABUFSIZE, align 4
  %70 = sdiv i32 %68, %69
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* @DMABUFSIZE, align 4
  %73 = srem i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %67
  %76 = load i32, i32* %10, align 4
  %77 = add i32 %76, 1
  store i32 %77, i32* %10, align 4
  br label %78

78:                                               ; preds = %75, %67
  %79 = load i32, i32* %10, align 4
  %80 = load %struct.slgt_info*, %struct.slgt_info** %8, align 8
  %81 = call i32 @free_tbuf_count(%struct.slgt_info* %80)
  %82 = icmp ugt i32 %79, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  br label %163

84:                                               ; preds = %78
  %85 = load i32, i32* %6, align 4
  %86 = load %struct.slgt_info*, %struct.slgt_info** %8, align 8
  %87 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 4
  store i32 %85, i32* %7, align 4
  %88 = load %struct.slgt_info*, %struct.slgt_info** %8, align 8
  %89 = load i8*, i8** %5, align 8
  %90 = load i32, i32* %6, align 4
  %91 = call i32 @tx_load(%struct.slgt_info* %88, i8* %89, i32 %90)
  br label %92

92:                                               ; preds = %84, %58
  %93 = load %struct.slgt_info*, %struct.slgt_info** %8, align 8
  %94 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %162

97:                                               ; preds = %92
  %98 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %99 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %162, label %102

102:                                              ; preds = %97
  %103 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %104 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %162, label %107

107:                                              ; preds = %102
  %108 = load %struct.slgt_info*, %struct.slgt_info** %8, align 8
  %109 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %108, i32 0, i32 6
  %110 = load i64, i64* %9, align 8
  %111 = call i32 @spin_lock_irqsave(i32* %109, i64 %110)
  %112 = load %struct.slgt_info*, %struct.slgt_info** %8, align 8
  %113 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %112, i32 0, i32 8
  %114 = load i32, i32* %113, align 8
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %119, label %116

116:                                              ; preds = %107
  %117 = load %struct.slgt_info*, %struct.slgt_info** %8, align 8
  %118 = call i32 @tx_start(%struct.slgt_info* %117)
  br label %151

119:                                              ; preds = %107
  %120 = load %struct.slgt_info*, %struct.slgt_info** %8, align 8
  %121 = load i32, i32* @TDCSR, align 4
  %122 = call i32 @rd_reg32(%struct.slgt_info* %120, i32 %121)
  %123 = load i32, i32* @BIT0, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %150, label %126

126:                                              ; preds = %119
  %127 = load %struct.slgt_info*, %struct.slgt_info** %8, align 8
  %128 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 8
  store i32 %129, i32* %11, align 4
  %130 = load i32, i32* %11, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %136, label %132

132:                                              ; preds = %126
  %133 = load %struct.slgt_info*, %struct.slgt_info** %8, align 8
  %134 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 4
  store i32 %135, i32* %11, align 4
  br label %136

136:                                              ; preds = %132, %126
  %137 = load i32, i32* %11, align 4
  %138 = add i32 %137, -1
  store i32 %138, i32* %11, align 4
  %139 = load %struct.slgt_info*, %struct.slgt_info** %8, align 8
  %140 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %139, i32 0, i32 7
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* %11, align 4
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = call i64 @desc_count(i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %136
  store i32 0, i32* %7, align 4
  br label %149

149:                                              ; preds = %148, %136
  br label %150

150:                                              ; preds = %149, %119
  br label %151

151:                                              ; preds = %150, %116
  %152 = load i32, i32* %7, align 4
  %153 = icmp sgt i32 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %151
  %155 = load %struct.slgt_info*, %struct.slgt_info** %8, align 8
  %156 = call i32 @update_tx_timer(%struct.slgt_info* %155)
  br label %157

157:                                              ; preds = %154, %151
  %158 = load %struct.slgt_info*, %struct.slgt_info** %8, align 8
  %159 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %158, i32 0, i32 6
  %160 = load i64, i64* %9, align 8
  %161 = call i32 @spin_unlock_irqrestore(i32* %159, i64 %160)
  br label %162

162:                                              ; preds = %157, %102, %97, %92
  br label %163

163:                                              ; preds = %162, %83, %47, %41, %34, %21
  %164 = load %struct.slgt_info*, %struct.slgt_info** %8, align 8
  %165 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %164, i32 0, i32 5
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* %7, align 4
  %168 = sext i32 %167 to i64
  %169 = inttoptr i64 %168 to i8*
  %170 = call i32 @DBGINFO(i8* %169)
  %171 = load i32, i32* %7, align 4
  ret i32 %171
}

declare dso_local i64 @sanity_check(%struct.slgt_info*, i32, i8*) #1

declare dso_local i32 @DBGINFO(i8*) #1

declare dso_local i32 @tx_load(%struct.slgt_info*, i8*, i32) #1

declare dso_local i32 @free_tbuf_count(%struct.slgt_info*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @tx_start(%struct.slgt_info*) #1

declare dso_local i32 @rd_reg32(%struct.slgt_info*, i32) #1

declare dso_local i64 @desc_count(i32) #1

declare dso_local i32 @update_tx_timer(%struct.slgt_info*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
