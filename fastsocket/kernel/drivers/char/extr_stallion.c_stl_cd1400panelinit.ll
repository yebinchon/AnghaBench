; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_stallion.c_stl_cd1400panelinit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_stallion.c_stl_cd1400panelinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stlbrd = type { i64, i32 }
%struct.stlpanel = type { i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [34 x i8] c"stl_panelinit(brdp=%p,panelp=%p)\0A\00", align 1
@brd_lock = common dso_local global i32 0, align 4
@CD1400_PORTS = common dso_local global i32 0, align 4
@BRD_ECHPCI = common dso_local global i64 0, align 8
@EREG_BANKSIZE = common dso_local global i32 0, align 4
@GFRCR = common dso_local global i64 0, align 8
@EREG_DATA = common dso_local global i32 0, align 4
@CCR = common dso_local global i64 0, align 8
@CCR_RESETFULL = common dso_local global i64 0, align 8
@CCR_MAXWAIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"STALLION: cd1400 not responding, brd=%d panel=%d chip=%d\0A\00", align 1
@PPR = common dso_local global i64 0, align 8
@PPR_SCALAR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stlbrd*, %struct.stlpanel*)* @stl_cd1400panelinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stl_cd1400panelinit(%struct.stlbrd* %0, %struct.stlpanel* %1) #0 {
  %3 = alloca %struct.stlbrd*, align 8
  %4 = alloca %struct.stlpanel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.stlbrd* %0, %struct.stlbrd** %3, align 8
  store %struct.stlpanel* %1, %struct.stlpanel** %4, align 8
  %13 = load %struct.stlbrd*, %struct.stlbrd** %3, align 8
  %14 = load %struct.stlpanel*, %struct.stlpanel** %4, align 8
  %15 = call i32 @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), %struct.stlbrd* %13, %struct.stlpanel* %14)
  %16 = load i64, i64* %12, align 8
  %17 = call i32 @spin_lock_irqsave(i32* @brd_lock, i64 %16)
  %18 = load %struct.stlpanel*, %struct.stlpanel** %4, align 8
  %19 = getelementptr inbounds %struct.stlpanel, %struct.stlpanel* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.stlpanel*, %struct.stlpanel** %4, align 8
  %22 = getelementptr inbounds %struct.stlpanel, %struct.stlpanel* %21, i32 0, i32 4
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @BRDENABLE(i32 %20, i64 %23)
  store i32 0, i32* %6, align 4
  %25 = load %struct.stlpanel*, %struct.stlpanel** %4, align 8
  %26 = getelementptr inbounds %struct.stlpanel, %struct.stlpanel* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @CD1400_PORTS, align 4
  %29 = sdiv i32 %27, %28
  store i32 %29, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %30

30:                                               ; preds = %152, %2
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %155

34:                                               ; preds = %30
  %35 = load %struct.stlbrd*, %struct.stlbrd** %3, align 8
  %36 = getelementptr inbounds %struct.stlbrd, %struct.stlbrd* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @BRD_ECHPCI, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %55

40:                                               ; preds = %34
  %41 = load %struct.stlpanel*, %struct.stlpanel** %4, align 8
  %42 = getelementptr inbounds %struct.stlpanel, %struct.stlpanel* %41, i32 0, i32 4
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = ashr i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %43, %46
  %48 = load %struct.stlbrd*, %struct.stlbrd** %3, align 8
  %49 = getelementptr inbounds %struct.stlbrd, %struct.stlbrd* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @outb(i64 %47, i32 %50)
  %52 = load %struct.stlpanel*, %struct.stlpanel** %4, align 8
  %53 = getelementptr inbounds %struct.stlpanel, %struct.stlpanel* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %11, align 4
  br label %64

55:                                               ; preds = %34
  %56 = load %struct.stlpanel*, %struct.stlpanel** %4, align 8
  %57 = getelementptr inbounds %struct.stlpanel, %struct.stlpanel* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @EREG_BANKSIZE, align 4
  %60 = load i32, i32* %7, align 4
  %61 = ashr i32 %60, 1
  %62 = mul nsw i32 %59, %61
  %63 = add nsw i32 %58, %62
  store i32 %63, i32* %11, align 4
  br label %64

64:                                               ; preds = %55, %40
  %65 = load i32, i32* %7, align 4
  %66 = and i32 %65, 1
  %67 = icmp ne i32 %66, 0
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i32 128, i32 0
  store i32 %69, i32* %10, align 4
  %70 = load i64, i64* @GFRCR, align 8
  %71 = load i32, i32* %10, align 4
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %70, %72
  %74 = load i32, i32* %11, align 4
  %75 = call i32 @outb(i64 %73, i32 %74)
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* @EREG_DATA, align 4
  %78 = add nsw i32 %76, %77
  %79 = call i32 @outb(i64 0, i32 %78)
  %80 = load i64, i64* @CCR, align 8
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = add nsw i64 %80, %82
  %84 = load i32, i32* %11, align 4
  %85 = call i32 @outb(i64 %83, i32 %84)
  %86 = load i64, i64* @CCR_RESETFULL, align 8
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* @EREG_DATA, align 4
  %89 = add nsw i32 %87, %88
  %90 = call i32 @outb(i64 %86, i32 %89)
  %91 = load i64, i64* @CCR_RESETFULL, align 8
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* @EREG_DATA, align 4
  %94 = add nsw i32 %92, %93
  %95 = call i32 @outb(i64 %91, i32 %94)
  %96 = load i64, i64* @GFRCR, align 8
  %97 = load i32, i32* %10, align 4
  %98 = sext i32 %97 to i64
  %99 = add nsw i64 %96, %98
  %100 = load i32, i32* %11, align 4
  %101 = call i32 @outb(i64 %99, i32 %100)
  store i32 0, i32* %8, align 4
  br label %102

102:                                              ; preds = %114, %64
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* @CCR_MAXWAIT, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %117

106:                                              ; preds = %102
  %107 = load i32, i32* %11, align 4
  %108 = load i32, i32* @EREG_DATA, align 4
  %109 = add nsw i32 %107, %108
  %110 = call i32 @inb(i32 %109)
  store i32 %110, i32* %5, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %106
  br label %117

113:                                              ; preds = %106
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %8, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %8, align 4
  br label %102

117:                                              ; preds = %112, %102
  %118 = load i32, i32* %8, align 4
  %119 = load i32, i32* @CCR_MAXWAIT, align 4
  %120 = icmp sge i32 %118, %119
  br i1 %120, label %127, label %121

121:                                              ; preds = %117
  %122 = load i32, i32* %5, align 4
  %123 = icmp ult i32 %122, 64
  br i1 %123, label %127, label %124

124:                                              ; preds = %121
  %125 = load i32, i32* %5, align 4
  %126 = icmp ugt i32 %125, 96
  br i1 %126, label %127, label %136

127:                                              ; preds = %124, %121, %117
  %128 = load %struct.stlpanel*, %struct.stlpanel** %4, align 8
  %129 = getelementptr inbounds %struct.stlpanel, %struct.stlpanel* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.stlpanel*, %struct.stlpanel** %4, align 8
  %132 = getelementptr inbounds %struct.stlpanel, %struct.stlpanel* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %7, align 4
  %135 = call i32 @printk(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %130, i32 %133, i32 %134)
  br label %152

136:                                              ; preds = %124
  %137 = load i32, i32* %7, align 4
  %138 = shl i32 1, %137
  %139 = load i32, i32* %6, align 4
  %140 = or i32 %139, %138
  store i32 %140, i32* %6, align 4
  %141 = load i64, i64* @PPR, align 8
  %142 = load i32, i32* %10, align 4
  %143 = sext i32 %142 to i64
  %144 = add nsw i64 %141, %143
  %145 = load i32, i32* %11, align 4
  %146 = call i32 @outb(i64 %144, i32 %145)
  %147 = load i64, i64* @PPR_SCALAR, align 8
  %148 = load i32, i32* %11, align 4
  %149 = load i32, i32* @EREG_DATA, align 4
  %150 = add nsw i32 %148, %149
  %151 = call i32 @outb(i64 %147, i32 %150)
  br label %152

152:                                              ; preds = %136, %127
  %153 = load i32, i32* %7, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %7, align 4
  br label %30

155:                                              ; preds = %30
  %156 = load %struct.stlpanel*, %struct.stlpanel** %4, align 8
  %157 = getelementptr inbounds %struct.stlpanel, %struct.stlpanel* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @BRDDISABLE(i32 %158)
  %160 = load i64, i64* %12, align 8
  %161 = call i32 @spin_unlock_irqrestore(i32* @brd_lock, i64 %160)
  %162 = load i32, i32* %6, align 4
  ret i32 %162
}

declare dso_local i32 @pr_debug(i8*, %struct.stlbrd*, %struct.stlpanel*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @BRDENABLE(i32, i64) #1

declare dso_local i32 @outb(i64, i32) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @printk(i8*, i32, i32, i32) #1

declare dso_local i32 @BRDDISABLE(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
