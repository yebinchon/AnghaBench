; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/jsm/extr_jsm_tty.c_jsm_tty_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/jsm/extr_jsm_tty.c_jsm_tty_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.ktermios* }
%struct.ktermios = type { i32*, i32, i32, i32, i32 }
%struct.jsm_board = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (%struct.jsm_channel*)*, i32 (%struct.jsm_channel*)*, i32 (%struct.jsm_channel*)*, i32 (%struct.jsm_channel*)* }
%struct.jsm_channel = type { %struct.jsm_board*, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i64, i64, i64, i64, i64, i64, i8*, i8*, i8* }

@CH_OPENING = common dso_local global i32 0, align 4
@RQUEUESIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@INIT = common dso_local global i32 0, align 4
@ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"unable to allocate read queue buf\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@EQUEUESIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"unable to allocate error queue buf\00", align 1
@WQUEUESIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"unable to allocate write queue buf\00", align 1
@OPEN = common dso_local global i32 0, align 4
@INFO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"jsm_open: initializing channel in open...\0A\00", align 1
@VSTART = common dso_local global i64 0, align 8
@VSTOP = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"finish\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @jsm_tty_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jsm_tty_open(%struct.uart_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca %struct.jsm_board*, align 8
  %5 = alloca %struct.jsm_channel*, align 8
  %6 = alloca %struct.ktermios*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  %7 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %8 = bitcast %struct.uart_port* %7 to %struct.jsm_channel*
  store %struct.jsm_channel* %8, %struct.jsm_channel** %5, align 8
  %9 = load %struct.jsm_channel*, %struct.jsm_channel** %5, align 8
  %10 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %9, i32 0, i32 0
  %11 = load %struct.jsm_board*, %struct.jsm_board** %10, align 8
  store %struct.jsm_board* %11, %struct.jsm_board** %4, align 8
  %12 = load i32, i32* @CH_OPENING, align 4
  %13 = load %struct.jsm_channel*, %struct.jsm_channel** %5, align 8
  %14 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %13, i32 0, i32 10
  %15 = load i32, i32* %14, align 8
  %16 = or i32 %15, %12
  store i32 %16, i32* %14, align 8
  %17 = load %struct.jsm_channel*, %struct.jsm_channel** %5, align 8
  %18 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %17, i32 0, i32 19
  %19 = load i8*, i8** %18, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %42, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @RQUEUESIZE, align 4
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call i8* @kzalloc(i32 %22, i32 %23)
  %25 = load %struct.jsm_channel*, %struct.jsm_channel** %5, align 8
  %26 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %25, i32 0, i32 19
  store i8* %24, i8** %26, align 8
  %27 = load %struct.jsm_channel*, %struct.jsm_channel** %5, align 8
  %28 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %27, i32 0, i32 19
  %29 = load i8*, i8** %28, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %41, label %31

31:                                               ; preds = %21
  %32 = load i32, i32* @INIT, align 4
  %33 = load i32, i32* @ERR, align 4
  %34 = load %struct.jsm_channel*, %struct.jsm_channel** %5, align 8
  %35 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %34, i32 0, i32 0
  %36 = load %struct.jsm_board*, %struct.jsm_board** %35, align 8
  %37 = getelementptr inbounds %struct.jsm_board, %struct.jsm_board* %36, i32 0, i32 0
  %38 = call i32 @jsm_printk(i32 %32, i32 %33, i32* %37, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %211

41:                                               ; preds = %21
  br label %42

42:                                               ; preds = %41, %1
  %43 = load %struct.jsm_channel*, %struct.jsm_channel** %5, align 8
  %44 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %43, i32 0, i32 18
  %45 = load i8*, i8** %44, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %68, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* @EQUEUESIZE, align 4
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = call i8* @kzalloc(i32 %48, i32 %49)
  %51 = load %struct.jsm_channel*, %struct.jsm_channel** %5, align 8
  %52 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %51, i32 0, i32 18
  store i8* %50, i8** %52, align 8
  %53 = load %struct.jsm_channel*, %struct.jsm_channel** %5, align 8
  %54 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %53, i32 0, i32 18
  %55 = load i8*, i8** %54, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %67, label %57

57:                                               ; preds = %47
  %58 = load i32, i32* @INIT, align 4
  %59 = load i32, i32* @ERR, align 4
  %60 = load %struct.jsm_channel*, %struct.jsm_channel** %5, align 8
  %61 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %60, i32 0, i32 0
  %62 = load %struct.jsm_board*, %struct.jsm_board** %61, align 8
  %63 = getelementptr inbounds %struct.jsm_board, %struct.jsm_board* %62, i32 0, i32 0
  %64 = call i32 @jsm_printk(i32 %58, i32 %59, i32* %63, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %2, align 4
  br label %211

67:                                               ; preds = %47
  br label %68

68:                                               ; preds = %67, %42
  %69 = load %struct.jsm_channel*, %struct.jsm_channel** %5, align 8
  %70 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %69, i32 0, i32 17
  %71 = load i8*, i8** %70, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %94, label %73

73:                                               ; preds = %68
  %74 = load i32, i32* @WQUEUESIZE, align 4
  %75 = load i32, i32* @GFP_KERNEL, align 4
  %76 = call i8* @kzalloc(i32 %74, i32 %75)
  %77 = load %struct.jsm_channel*, %struct.jsm_channel** %5, align 8
  %78 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %77, i32 0, i32 17
  store i8* %76, i8** %78, align 8
  %79 = load %struct.jsm_channel*, %struct.jsm_channel** %5, align 8
  %80 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %79, i32 0, i32 17
  %81 = load i8*, i8** %80, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %93, label %83

83:                                               ; preds = %73
  %84 = load i32, i32* @INIT, align 4
  %85 = load i32, i32* @ERR, align 4
  %86 = load %struct.jsm_channel*, %struct.jsm_channel** %5, align 8
  %87 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %86, i32 0, i32 0
  %88 = load %struct.jsm_board*, %struct.jsm_board** %87, align 8
  %89 = getelementptr inbounds %struct.jsm_board, %struct.jsm_board* %88, i32 0, i32 0
  %90 = call i32 @jsm_printk(i32 %84, i32 %85, i32* %89, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %91 = load i32, i32* @ENOMEM, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %2, align 4
  br label %211

93:                                               ; preds = %73
  br label %94

94:                                               ; preds = %93, %68
  %95 = load i32, i32* @CH_OPENING, align 4
  %96 = xor i32 %95, -1
  %97 = load %struct.jsm_channel*, %struct.jsm_channel** %5, align 8
  %98 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %97, i32 0, i32 10
  %99 = load i32, i32* %98, align 8
  %100 = and i32 %99, %96
  store i32 %100, i32* %98, align 8
  %101 = load i32, i32* @OPEN, align 4
  %102 = load i32, i32* @INFO, align 4
  %103 = load %struct.jsm_channel*, %struct.jsm_channel** %5, align 8
  %104 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %103, i32 0, i32 0
  %105 = load %struct.jsm_board*, %struct.jsm_board** %104, align 8
  %106 = getelementptr inbounds %struct.jsm_board, %struct.jsm_board* %105, i32 0, i32 0
  %107 = call i32 @jsm_printk(i32 %101, i32 %102, i32* %106, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  %108 = load %struct.jsm_channel*, %struct.jsm_channel** %5, align 8
  %109 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %108, i32 0, i32 15
  store i64 0, i64* %109, align 8
  %110 = load %struct.jsm_channel*, %struct.jsm_channel** %5, align 8
  %111 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %110, i32 0, i32 16
  store i64 0, i64* %111, align 8
  %112 = load %struct.jsm_channel*, %struct.jsm_channel** %5, align 8
  %113 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %112, i32 0, i32 13
  store i64 0, i64* %113, align 8
  %114 = load %struct.jsm_channel*, %struct.jsm_channel** %5, align 8
  %115 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %114, i32 0, i32 14
  store i64 0, i64* %115, align 8
  %116 = load %struct.jsm_channel*, %struct.jsm_channel** %5, align 8
  %117 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %116, i32 0, i32 11
  store i64 0, i64* %117, align 8
  %118 = load %struct.jsm_channel*, %struct.jsm_channel** %5, align 8
  %119 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %118, i32 0, i32 12
  store i64 0, i64* %119, align 8
  %120 = load %struct.jsm_board*, %struct.jsm_board** %4, align 8
  %121 = getelementptr inbounds %struct.jsm_board, %struct.jsm_board* %120, i32 0, i32 1
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 3
  %124 = load i32 (%struct.jsm_channel*)*, i32 (%struct.jsm_channel*)** %123, align 8
  %125 = load %struct.jsm_channel*, %struct.jsm_channel** %5, align 8
  %126 = call i32 %124(%struct.jsm_channel* %125)
  %127 = load %struct.jsm_board*, %struct.jsm_board** %4, align 8
  %128 = getelementptr inbounds %struct.jsm_board, %struct.jsm_board* %127, i32 0, i32 1
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 2
  %131 = load i32 (%struct.jsm_channel*)*, i32 (%struct.jsm_channel*)** %130, align 8
  %132 = load %struct.jsm_channel*, %struct.jsm_channel** %5, align 8
  %133 = call i32 %131(%struct.jsm_channel* %132)
  %134 = load %struct.jsm_channel*, %struct.jsm_channel** %5, align 8
  %135 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %134, i32 0, i32 10
  store i32 0, i32* %135, align 8
  %136 = load %struct.jsm_channel*, %struct.jsm_channel** %5, align 8
  %137 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %136, i32 0, i32 9
  store i64 0, i64* %137, align 8
  %138 = load %struct.jsm_channel*, %struct.jsm_channel** %5, align 8
  %139 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %138, i32 0, i32 8
  store i64 0, i64* %139, align 8
  %140 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %141 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %140, i32 0, i32 0
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 0
  %147 = load %struct.ktermios*, %struct.ktermios** %146, align 8
  store %struct.ktermios* %147, %struct.ktermios** %6, align 8
  %148 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %149 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %148, i32 0, i32 4
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.jsm_channel*, %struct.jsm_channel** %5, align 8
  %152 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %151, i32 0, i32 7
  store i32 %150, i32* %152, align 8
  %153 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %154 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.jsm_channel*, %struct.jsm_channel** %5, align 8
  %157 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %156, i32 0, i32 6
  store i32 %155, i32* %157, align 4
  %158 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %159 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.jsm_channel*, %struct.jsm_channel** %5, align 8
  %162 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %161, i32 0, i32 5
  store i32 %160, i32* %162, align 8
  %163 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %164 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.jsm_channel*, %struct.jsm_channel** %5, align 8
  %167 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %166, i32 0, i32 4
  store i32 %165, i32* %167, align 4
  %168 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %169 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %168, i32 0, i32 0
  %170 = load i32*, i32** %169, align 8
  %171 = load i64, i64* @VSTART, align 8
  %172 = getelementptr inbounds i32, i32* %170, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.jsm_channel*, %struct.jsm_channel** %5, align 8
  %175 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %174, i32 0, i32 3
  store i32 %173, i32* %175, align 8
  %176 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %177 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %176, i32 0, i32 0
  %178 = load i32*, i32** %177, align 8
  %179 = load i64, i64* @VSTOP, align 8
  %180 = getelementptr inbounds i32, i32* %178, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.jsm_channel*, %struct.jsm_channel** %5, align 8
  %183 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %182, i32 0, i32 2
  store i32 %181, i32* %183, align 4
  %184 = load %struct.jsm_board*, %struct.jsm_board** %4, align 8
  %185 = getelementptr inbounds %struct.jsm_board, %struct.jsm_board* %184, i32 0, i32 1
  %186 = load %struct.TYPE_8__*, %struct.TYPE_8__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 1
  %188 = load i32 (%struct.jsm_channel*)*, i32 (%struct.jsm_channel*)** %187, align 8
  %189 = load %struct.jsm_channel*, %struct.jsm_channel** %5, align 8
  %190 = call i32 %188(%struct.jsm_channel* %189)
  %191 = load %struct.jsm_board*, %struct.jsm_board** %4, align 8
  %192 = getelementptr inbounds %struct.jsm_board, %struct.jsm_board* %191, i32 0, i32 1
  %193 = load %struct.TYPE_8__*, %struct.TYPE_8__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 0
  %195 = load i32 (%struct.jsm_channel*)*, i32 (%struct.jsm_channel*)** %194, align 8
  %196 = load %struct.jsm_channel*, %struct.jsm_channel** %5, align 8
  %197 = call i32 %195(%struct.jsm_channel* %196)
  %198 = load %struct.jsm_channel*, %struct.jsm_channel** %5, align 8
  %199 = call i32 @jsm_carrier(%struct.jsm_channel* %198)
  %200 = load %struct.jsm_channel*, %struct.jsm_channel** %5, align 8
  %201 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 8
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %201, align 8
  %204 = load i32, i32* @OPEN, align 4
  %205 = load i32, i32* @INFO, align 4
  %206 = load %struct.jsm_channel*, %struct.jsm_channel** %5, align 8
  %207 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %206, i32 0, i32 0
  %208 = load %struct.jsm_board*, %struct.jsm_board** %207, align 8
  %209 = getelementptr inbounds %struct.jsm_board, %struct.jsm_board* %208, i32 0, i32 0
  %210 = call i32 @jsm_printk(i32 %204, i32 %205, i32* %209, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %211

211:                                              ; preds = %94, %83, %57, %31
  %212 = load i32, i32* %2, align 4
  ret i32 %212
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @jsm_printk(i32, i32, i32*, i8*) #1

declare dso_local i32 @jsm_carrier(%struct.jsm_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
