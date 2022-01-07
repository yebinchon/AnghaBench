; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_nxt200x.c_nxt2004_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_nxt200x.c_nxt2004_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.nxt200x_state* }
%struct.nxt200x_state = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.firmware = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"nxt2004: Waiting for firmware upload (%s)...\0A\00", align 1
@NXT2004_DEFAULT_FIRMWARE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"nxt2004: Waiting for firmware upload(2)...\0A\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"nxt2004: No firmware uploaded (timeout or file not found?)\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"nxt2004: Writing firmware to device failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"nxt2004: Firmware upload complete\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @nxt2004_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nxt2004_init(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.nxt200x_state*, align 8
  %5 = alloca %struct.firmware*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [3 x i32], align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 0
  %10 = load %struct.nxt200x_state*, %struct.nxt200x_state** %9, align 8
  store %struct.nxt200x_state* %10, %struct.nxt200x_state** %4, align 8
  %11 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  store i32 0, i32* %11, align 4
  %12 = load %struct.nxt200x_state*, %struct.nxt200x_state** %4, align 8
  %13 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %14 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %12, i32 30, i32* %13, i32 1)
  %15 = load i32, i32* @NXT2004_DEFAULT_FIRMWARE, align 4
  %16 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* @NXT2004_DEFAULT_FIRMWARE, align 4
  %18 = load %struct.nxt200x_state*, %struct.nxt200x_state** %4, align 8
  %19 = getelementptr inbounds %struct.nxt200x_state, %struct.nxt200x_state* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @request_firmware(%struct.firmware** %5, i32 %17, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %1
  %29 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0))
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %2, align 4
  br label %271

31:                                               ; preds = %1
  %32 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %33 = load %struct.firmware*, %struct.firmware** %5, align 8
  %34 = call i32 @nxt2004_load_firmware(%struct.dvb_frontend* %32, %struct.firmware* %33)
  store i32 %34, i32* %6, align 4
  %35 = load %struct.firmware*, %struct.firmware** %5, align 8
  %36 = call i32 @release_firmware(%struct.firmware* %35)
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %31
  %40 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %2, align 4
  br label %271

42:                                               ; preds = %31
  %43 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %44 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  store i32 1, i32* %44, align 4
  %45 = load %struct.nxt200x_state*, %struct.nxt200x_state** %4, align 8
  %46 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %47 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %45, i32 25, i32* %46, i32 1)
  %48 = load %struct.nxt200x_state*, %struct.nxt200x_state** %4, align 8
  %49 = call i32 @nxt2004_microcontroller_init(%struct.nxt200x_state* %48)
  %50 = load %struct.nxt200x_state*, %struct.nxt200x_state** %4, align 8
  %51 = call i32 @nxt200x_microcontroller_stop(%struct.nxt200x_state* %50)
  %52 = load %struct.nxt200x_state*, %struct.nxt200x_state** %4, align 8
  %53 = call i32 @nxt200x_microcontroller_stop(%struct.nxt200x_state* %52)
  %54 = load %struct.nxt200x_state*, %struct.nxt200x_state** %4, align 8
  %55 = call i32 @nxt2004_microcontroller_init(%struct.nxt200x_state* %54)
  %56 = load %struct.nxt200x_state*, %struct.nxt200x_state** %4, align 8
  %57 = call i32 @nxt200x_microcontroller_stop(%struct.nxt200x_state* %56)
  %58 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  store i32 255, i32* %58, align 4
  %59 = load %struct.nxt200x_state*, %struct.nxt200x_state** %4, align 8
  %60 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %61 = call i32 @nxt200x_writereg_multibyte(%struct.nxt200x_state* %59, i32 8, i32* %60, i32 1)
  %62 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  store i32 0, i32* %62, align 4
  %63 = load %struct.nxt200x_state*, %struct.nxt200x_state** %4, align 8
  %64 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %65 = call i32 @nxt200x_writereg_multibyte(%struct.nxt200x_state* %63, i32 8, i32* %64, i32 1)
  %66 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  store i32 215, i32* %66, align 4
  %67 = load %struct.nxt200x_state*, %struct.nxt200x_state** %4, align 8
  %68 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %69 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %67, i32 87, i32* %68, i32 1)
  %70 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  store i32 7, i32* %70, align 4
  %71 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 1
  store i32 254, i32* %71, align 4
  %72 = load %struct.nxt200x_state*, %struct.nxt200x_state** %4, align 8
  %73 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %74 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %72, i32 53, i32* %73, i32 2)
  %75 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  store i32 18, i32* %75, align 4
  %76 = load %struct.nxt200x_state*, %struct.nxt200x_state** %4, align 8
  %77 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %78 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %76, i32 52, i32* %77, i32 1)
  %79 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  store i32 128, i32* %79, align 4
  %80 = load %struct.nxt200x_state*, %struct.nxt200x_state** %4, align 8
  %81 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %82 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %80, i32 33, i32* %81, i32 1)
  %83 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  store i32 33, i32* %83, align 4
  %84 = load %struct.nxt200x_state*, %struct.nxt200x_state** %4, align 8
  %85 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %86 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %84, i32 10, i32* %85, i32 1)
  %87 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  store i32 1, i32* %87, align 4
  %88 = load %struct.nxt200x_state*, %struct.nxt200x_state** %4, align 8
  %89 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %90 = call i32 @nxt200x_writereg_multibyte(%struct.nxt200x_state* %88, i32 128, i32* %89, i32 1)
  %91 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  store i32 126, i32* %91, align 4
  %92 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 1
  store i32 0, i32* %92, align 4
  %93 = load %struct.nxt200x_state*, %struct.nxt200x_state** %4, align 8
  %94 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %95 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %93, i32 233, i32* %94, i32 2)
  %96 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  store i32 0, i32* %96, align 4
  %97 = load %struct.nxt200x_state*, %struct.nxt200x_state** %4, align 8
  %98 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %99 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %97, i32 204, i32* %98, i32 1)
  %100 = load %struct.nxt200x_state*, %struct.nxt200x_state** %4, align 8
  %101 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %102 = call i32 @nxt200x_readreg_multibyte(%struct.nxt200x_state* %100, i32 128, i32* %101, i32 1)
  %103 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  store i32 0, i32* %103, align 4
  %104 = load %struct.nxt200x_state*, %struct.nxt200x_state** %4, align 8
  %105 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %106 = call i32 @nxt200x_writereg_multibyte(%struct.nxt200x_state* %104, i32 128, i32* %105, i32 1)
  %107 = load %struct.nxt200x_state*, %struct.nxt200x_state** %4, align 8
  %108 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %109 = call i32 @nxt200x_readreg_multibyte(%struct.nxt200x_state* %107, i32 8, i32* %108, i32 1)
  %110 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  store i32 16, i32* %110, align 4
  %111 = load %struct.nxt200x_state*, %struct.nxt200x_state** %4, align 8
  %112 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %113 = call i32 @nxt200x_writereg_multibyte(%struct.nxt200x_state* %111, i32 8, i32* %112, i32 1)
  %114 = load %struct.nxt200x_state*, %struct.nxt200x_state** %4, align 8
  %115 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %116 = call i32 @nxt200x_readreg_multibyte(%struct.nxt200x_state* %114, i32 8, i32* %115, i32 1)
  %117 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  store i32 0, i32* %117, align 4
  %118 = load %struct.nxt200x_state*, %struct.nxt200x_state** %4, align 8
  %119 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %120 = call i32 @nxt200x_writereg_multibyte(%struct.nxt200x_state* %118, i32 8, i32* %119, i32 1)
  %121 = load %struct.nxt200x_state*, %struct.nxt200x_state** %4, align 8
  %122 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %123 = call i32 @nxt200x_readreg_multibyte(%struct.nxt200x_state* %121, i32 128, i32* %122, i32 1)
  %124 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  store i32 1, i32* %124, align 4
  %125 = load %struct.nxt200x_state*, %struct.nxt200x_state** %4, align 8
  %126 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %127 = call i32 @nxt200x_writereg_multibyte(%struct.nxt200x_state* %125, i32 128, i32* %126, i32 1)
  %128 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  store i32 112, i32* %128, align 4
  %129 = load %struct.nxt200x_state*, %struct.nxt200x_state** %4, align 8
  %130 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %131 = call i32 @nxt200x_writereg_multibyte(%struct.nxt200x_state* %129, i32 129, i32* %130, i32 1)
  %132 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  store i32 49, i32* %132, align 4
  %133 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 1
  store i32 94, i32* %133, align 4
  %134 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 2
  store i32 102, i32* %134, align 4
  %135 = load %struct.nxt200x_state*, %struct.nxt200x_state** %4, align 8
  %136 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %137 = call i32 @nxt200x_writereg_multibyte(%struct.nxt200x_state* %135, i32 130, i32* %136, i32 3)
  %138 = load %struct.nxt200x_state*, %struct.nxt200x_state** %4, align 8
  %139 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %140 = call i32 @nxt200x_readreg_multibyte(%struct.nxt200x_state* %138, i32 136, i32* %139, i32 1)
  %141 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  store i32 17, i32* %141, align 4
  %142 = load %struct.nxt200x_state*, %struct.nxt200x_state** %4, align 8
  %143 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %144 = call i32 @nxt200x_writereg_multibyte(%struct.nxt200x_state* %142, i32 136, i32* %143, i32 1)
  %145 = load %struct.nxt200x_state*, %struct.nxt200x_state** %4, align 8
  %146 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %147 = call i32 @nxt200x_readreg_multibyte(%struct.nxt200x_state* %145, i32 128, i32* %146, i32 1)
  %148 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  store i32 64, i32* %148, align 4
  %149 = load %struct.nxt200x_state*, %struct.nxt200x_state** %4, align 8
  %150 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %151 = call i32 @nxt200x_writereg_multibyte(%struct.nxt200x_state* %149, i32 128, i32* %150, i32 1)
  %152 = load %struct.nxt200x_state*, %struct.nxt200x_state** %4, align 8
  %153 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %154 = call i32 @nxt200x_readbytes(%struct.nxt200x_state* %152, i32 16, i32* %153, i32 1)
  %155 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  store i32 16, i32* %155, align 4
  %156 = load %struct.nxt200x_state*, %struct.nxt200x_state** %4, align 8
  %157 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %158 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %156, i32 16, i32* %157, i32 1)
  %159 = load %struct.nxt200x_state*, %struct.nxt200x_state** %4, align 8
  %160 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %161 = call i32 @nxt200x_readbytes(%struct.nxt200x_state* %159, i32 10, i32* %160, i32 1)
  %162 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  store i32 33, i32* %162, align 4
  %163 = load %struct.nxt200x_state*, %struct.nxt200x_state** %4, align 8
  %164 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %165 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %163, i32 10, i32* %164, i32 1)
  %166 = load %struct.nxt200x_state*, %struct.nxt200x_state** %4, align 8
  %167 = call i32 @nxt2004_microcontroller_init(%struct.nxt200x_state* %166)
  %168 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  store i32 33, i32* %168, align 4
  %169 = load %struct.nxt200x_state*, %struct.nxt200x_state** %4, align 8
  %170 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %171 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %169, i32 10, i32* %170, i32 1)
  %172 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  store i32 126, i32* %172, align 4
  %173 = load %struct.nxt200x_state*, %struct.nxt200x_state** %4, align 8
  %174 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %175 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %173, i32 233, i32* %174, i32 1)
  %176 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  store i32 0, i32* %176, align 4
  %177 = load %struct.nxt200x_state*, %struct.nxt200x_state** %4, align 8
  %178 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %179 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %177, i32 234, i32* %178, i32 1)
  %180 = load %struct.nxt200x_state*, %struct.nxt200x_state** %4, align 8
  %181 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %182 = call i32 @nxt200x_readreg_multibyte(%struct.nxt200x_state* %180, i32 128, i32* %181, i32 1)
  %183 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  store i32 0, i32* %183, align 4
  %184 = load %struct.nxt200x_state*, %struct.nxt200x_state** %4, align 8
  %185 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %186 = call i32 @nxt200x_writereg_multibyte(%struct.nxt200x_state* %184, i32 128, i32* %185, i32 1)
  %187 = load %struct.nxt200x_state*, %struct.nxt200x_state** %4, align 8
  %188 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %189 = call i32 @nxt200x_readreg_multibyte(%struct.nxt200x_state* %187, i32 128, i32* %188, i32 1)
  %190 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  store i32 0, i32* %190, align 4
  %191 = load %struct.nxt200x_state*, %struct.nxt200x_state** %4, align 8
  %192 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %193 = call i32 @nxt200x_writereg_multibyte(%struct.nxt200x_state* %191, i32 128, i32* %192, i32 1)
  %194 = load %struct.nxt200x_state*, %struct.nxt200x_state** %4, align 8
  %195 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %196 = call i32 @nxt200x_readreg_multibyte(%struct.nxt200x_state* %194, i32 8, i32* %195, i32 1)
  %197 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  store i32 16, i32* %197, align 4
  %198 = load %struct.nxt200x_state*, %struct.nxt200x_state** %4, align 8
  %199 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %200 = call i32 @nxt200x_writereg_multibyte(%struct.nxt200x_state* %198, i32 8, i32* %199, i32 1)
  %201 = load %struct.nxt200x_state*, %struct.nxt200x_state** %4, align 8
  %202 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %203 = call i32 @nxt200x_readreg_multibyte(%struct.nxt200x_state* %201, i32 8, i32* %202, i32 1)
  %204 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  store i32 0, i32* %204, align 4
  %205 = load %struct.nxt200x_state*, %struct.nxt200x_state** %4, align 8
  %206 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %207 = call i32 @nxt200x_writereg_multibyte(%struct.nxt200x_state* %205, i32 8, i32* %206, i32 1)
  %208 = load %struct.nxt200x_state*, %struct.nxt200x_state** %4, align 8
  %209 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %210 = call i32 @nxt200x_readreg_multibyte(%struct.nxt200x_state* %208, i32 128, i32* %209, i32 1)
  %211 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  store i32 4, i32* %211, align 4
  %212 = load %struct.nxt200x_state*, %struct.nxt200x_state** %4, align 8
  %213 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %214 = call i32 @nxt200x_writereg_multibyte(%struct.nxt200x_state* %212, i32 128, i32* %213, i32 1)
  %215 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  store i32 0, i32* %215, align 4
  %216 = load %struct.nxt200x_state*, %struct.nxt200x_state** %4, align 8
  %217 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %218 = call i32 @nxt200x_writereg_multibyte(%struct.nxt200x_state* %216, i32 129, i32* %217, i32 1)
  %219 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  store i32 128, i32* %219, align 4
  %220 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 1
  store i32 0, i32* %220, align 4
  %221 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 2
  store i32 0, i32* %221, align 4
  %222 = load %struct.nxt200x_state*, %struct.nxt200x_state** %4, align 8
  %223 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %224 = call i32 @nxt200x_writereg_multibyte(%struct.nxt200x_state* %222, i32 130, i32* %223, i32 3)
  %225 = load %struct.nxt200x_state*, %struct.nxt200x_state** %4, align 8
  %226 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %227 = call i32 @nxt200x_readreg_multibyte(%struct.nxt200x_state* %225, i32 136, i32* %226, i32 1)
  %228 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  store i32 17, i32* %228, align 4
  %229 = load %struct.nxt200x_state*, %struct.nxt200x_state** %4, align 8
  %230 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %231 = call i32 @nxt200x_writereg_multibyte(%struct.nxt200x_state* %229, i32 136, i32* %230, i32 1)
  %232 = load %struct.nxt200x_state*, %struct.nxt200x_state** %4, align 8
  %233 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %234 = call i32 @nxt200x_readreg_multibyte(%struct.nxt200x_state* %232, i32 128, i32* %233, i32 1)
  %235 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  store i32 68, i32* %235, align 4
  %236 = load %struct.nxt200x_state*, %struct.nxt200x_state** %4, align 8
  %237 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %238 = call i32 @nxt200x_writereg_multibyte(%struct.nxt200x_state* %236, i32 128, i32* %237, i32 1)
  %239 = load %struct.nxt200x_state*, %struct.nxt200x_state** %4, align 8
  %240 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %241 = call i32 @nxt200x_readbytes(%struct.nxt200x_state* %239, i32 16, i32* %240, i32 1)
  %242 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  store i32 18, i32* %242, align 4
  %243 = load %struct.nxt200x_state*, %struct.nxt200x_state** %4, align 8
  %244 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %245 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %243, i32 16, i32* %244, i32 1)
  %246 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  store i32 4, i32* %246, align 4
  %247 = load %struct.nxt200x_state*, %struct.nxt200x_state** %4, align 8
  %248 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %249 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %247, i32 19, i32* %248, i32 1)
  %250 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  store i32 0, i32* %250, align 4
  %251 = load %struct.nxt200x_state*, %struct.nxt200x_state** %4, align 8
  %252 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %253 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %251, i32 22, i32* %252, i32 1)
  %254 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  store i32 4, i32* %254, align 4
  %255 = load %struct.nxt200x_state*, %struct.nxt200x_state** %4, align 8
  %256 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %257 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %255, i32 20, i32* %256, i32 1)
  %258 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  store i32 0, i32* %258, align 4
  %259 = load %struct.nxt200x_state*, %struct.nxt200x_state** %4, align 8
  %260 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %261 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %259, i32 20, i32* %260, i32 1)
  %262 = load %struct.nxt200x_state*, %struct.nxt200x_state** %4, align 8
  %263 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %264 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %262, i32 23, i32* %263, i32 1)
  %265 = load %struct.nxt200x_state*, %struct.nxt200x_state** %4, align 8
  %266 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %267 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %265, i32 20, i32* %266, i32 1)
  %268 = load %struct.nxt200x_state*, %struct.nxt200x_state** %4, align 8
  %269 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %270 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %268, i32 23, i32* %269, i32 1)
  store i32 0, i32* %2, align 4
  br label %271

271:                                              ; preds = %42, %39, %28
  %272 = load i32, i32* %2, align 4
  ret i32 %272
}

declare dso_local i32 @nxt200x_writebytes(%struct.nxt200x_state*, i32, i32*, i32) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @request_firmware(%struct.firmware**, i32, i32) #1

declare dso_local i32 @nxt2004_load_firmware(%struct.dvb_frontend*, %struct.firmware*) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

declare dso_local i32 @nxt2004_microcontroller_init(%struct.nxt200x_state*) #1

declare dso_local i32 @nxt200x_microcontroller_stop(%struct.nxt200x_state*) #1

declare dso_local i32 @nxt200x_writereg_multibyte(%struct.nxt200x_state*, i32, i32*, i32) #1

declare dso_local i32 @nxt200x_readreg_multibyte(%struct.nxt200x_state*, i32, i32*, i32) #1

declare dso_local i32 @nxt200x_readbytes(%struct.nxt200x_state*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
