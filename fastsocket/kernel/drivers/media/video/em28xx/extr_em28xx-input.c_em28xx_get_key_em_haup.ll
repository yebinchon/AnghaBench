; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-input.c_em28xx_get_key_em_haup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-input.c_em28xx_get_key_em_haup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IR_i2c = type { i8, i32 }

@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"ir hauppauge (em2840): code=0x%02x (rcv=0x%02x%02x)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @em28xx_get_key_em_haup(%struct.IR_i2c* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.IR_i2c*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [2 x i8], align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.IR_i2c* %0, %struct.IR_i2c** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.IR_i2c*, %struct.IR_i2c** %5, align 8
  %12 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 0
  %15 = call i32 @i2c_master_recv(i32 %13, i8* %14, i32 2)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp ne i32 %16, 2
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EIO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %129

21:                                               ; preds = %3
  %22 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 1
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i32
  %25 = icmp eq i32 %24, 255
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %129

27:                                               ; preds = %21
  %28 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 1
  %29 = load i8, i8* %28, align 1
  %30 = load %struct.IR_i2c*, %struct.IR_i2c** %5, align 8
  %31 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %30, i32 0, i32 0
  store i8 %29, i8* %31, align 4
  %32 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 0
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = and i32 %34, 1
  %36 = icmp ne i32 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 32, i32 0
  %39 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 0
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = and i32 %41, 2
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i32 16, i32 0
  %46 = or i32 %38, %45
  %47 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 0
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  %50 = and i32 %49, 4
  %51 = icmp ne i32 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i32 8, i32 0
  %54 = or i32 %46, %53
  %55 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 0
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  %58 = and i32 %57, 8
  %59 = icmp ne i32 %58, 0
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i32 4, i32 0
  %62 = or i32 %54, %61
  %63 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 0
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i32
  %66 = and i32 %65, 16
  %67 = icmp ne i32 %66, 0
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i32 2, i32 0
  %70 = or i32 %62, %69
  %71 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 0
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i32
  %74 = and i32 %73, 32
  %75 = icmp ne i32 %74, 0
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i32 1, i32 0
  %78 = or i32 %70, %77
  %79 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 1
  %80 = load i8, i8* %79, align 1
  %81 = zext i8 %80 to i32
  %82 = and i32 %81, 8
  %83 = icmp ne i32 %82, 0
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i32 4096, i32 0
  %86 = or i32 %78, %85
  %87 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 1
  %88 = load i8, i8* %87, align 1
  %89 = zext i8 %88 to i32
  %90 = and i32 %89, 16
  %91 = icmp ne i32 %90, 0
  %92 = zext i1 %91 to i64
  %93 = select i1 %91, i32 2048, i32 0
  %94 = or i32 %86, %93
  %95 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 1
  %96 = load i8, i8* %95, align 1
  %97 = zext i8 %96 to i32
  %98 = and i32 %97, 32
  %99 = icmp ne i32 %98, 0
  %100 = zext i1 %99 to i64
  %101 = select i1 %99, i32 1024, i32 0
  %102 = or i32 %94, %101
  %103 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 1
  %104 = load i8, i8* %103, align 1
  %105 = zext i8 %104 to i32
  %106 = and i32 %105, 64
  %107 = icmp ne i32 %106, 0
  %108 = zext i1 %107 to i64
  %109 = select i1 %107, i32 512, i32 0
  %110 = or i32 %102, %109
  %111 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 1
  %112 = load i8, i8* %111, align 1
  %113 = zext i8 %112 to i32
  %114 = and i32 %113, 128
  %115 = icmp ne i32 %114, 0
  %116 = zext i1 %115 to i64
  %117 = select i1 %115, i32 256, i32 0
  %118 = or i32 %110, %117
  store i32 %118, i32* %9, align 4
  %119 = load i32, i32* %9, align 4
  %120 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 1
  %121 = load i8, i8* %120, align 1
  %122 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 0
  %123 = load i8, i8* %122, align 1
  %124 = call i32 @i2cdprintk(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %119, i8 zeroext %121, i8 zeroext %123)
  %125 = load i32, i32* %9, align 4
  %126 = load i32*, i32** %6, align 8
  store i32 %125, i32* %126, align 4
  %127 = load i32, i32* %9, align 4
  %128 = load i32*, i32** %7, align 8
  store i32 %127, i32* %128, align 4
  store i32 1, i32* %4, align 4
  br label %129

129:                                              ; preds = %27, %26, %18
  %130 = load i32, i32* %4, align 4
  ret i32 %130
}

declare dso_local i32 @i2c_master_recv(i32, i8*, i32) #1

declare dso_local i32 @i2cdprintk(i8*, i32, i8 zeroext, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
